#!/bin/bash

# Répertoire à traiter (par défaut le dossier courant)
BASE_DIR="${1:-.}"

# Sauvegarde des fichiers originaux
BACKUP_DIR="$BASE_DIR/backup_md_align_$(date +%s)"
mkdir -p "$BACKUP_DIR"

# Fonction pour réaligner un tableau Markdown avec séparateurs corrects
align_table() {
  awk '
  BEGIN {
    FS="|";
    OFS="|";
  }
  {
    # Ignore les lignes vides
    if (NF <= 1) next;

    is_separator = 1;
    for (i = 1; i <= NF; i++) {
      gsub(/^[ \t]+|[ \t]+$/, "", $i);
      cell[NR, i] = $i;
      if ($i !~ /^:?-+:?$/) is_separator = 0;
      if (!is_separator && length($i) > maxlen[i]) {
        maxlen[i] = length($i);
      }
    }

    if (NF > maxcol) {
      maxcol = NF;
    }
    rows = NR;
    is_separator_row[NR] = is_separator;
  }
  END {
    for (r = 1; r <= rows; r++) {
      line = "";
      for (c = 1; c <= maxcol; c++) {
        val = (cell[r,c] ? cell[r,c] : "");
        pad = maxlen[c];

        # Gère les séparateurs dynamiquement
        if (is_separator_row[r]) {
          if (val ~ /^:-+?:$/) {
            val = ":" sprintf("%" (pad - 2) "s", "-") ":"
          } else if (val ~ /^:-+$/) {
            val = ":" sprintf("%" (pad - 1) "s", "-")
          } else if (val ~ /^-+?:$/) {
            val = sprintf("%" (pad - 1) "s", "-") ":"
          } else {
            val = sprintf("%" pad "s", "-")
          }
        } else {
          format = "%-" pad "s";
          val = sprintf(format, val);
        }

        line = line " " val " |";
      }
      print "|" substr(line, 2);  # Supprime l’espace initial
    }
  }'
}

# Parcourt les fichiers .md
find "$BASE_DIR" -type f -name "*.md" | while read -r file; do
  echo "🔧 Traitement de $file"
  cp "$file" "$BACKUP_DIR/$(basename "$file")"

  tmp_file="$(mktemp)"
  in_table=false
  buffer=""

  while IFS= read -r line || [ -n "$line" ]; do
    if [[ "$line" =~ ^\|.*\|$ ]]; then
      in_table=true
      buffer+="$line"$'\n'
    else
      if [ "$in_table" = true ]; then
        echo "$buffer" | align_table >> "$tmp_file"
        buffer=""
        in_table=false
      fi
      echo "$line" >> "$tmp_file"
    fi
  done < "$file"

  # Cas où le fichier se termine par un tableau
  if [ "$in_table" = true ]; then
    echo "$buffer" | align_table >> "$tmp_file"
  fi

  mv "$tmp_file" "$file"
done

echo "✅ Terminé. Les tableaux ont été réalignés dans tous les fichiers .md."
echo "📦 Sauvegardes originales disponibles dans : $BACKUP_DIR"
