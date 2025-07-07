# Accessibility Support for UI Elements in the Design System

Ensuring accessibility for all users, including those using voiceover functionalities, is a crucial aspect of designing an inclusive user interface. This article outlines the accessibility support for various UI elements within our design system. Each element is described with its corresponding accessibility properties, including labels and types.

## UI Elements and Accessibility Values

### IDnowEntryButton
- **Label**: Combination of title and description
- **Type**: Button

### IDnowTutorialStep
- **Label**: "Step <step_number>, title, description"
- **Type**: Static Text

### IDnowScreenHeaderView
- **Label**: No default label. Custom labels are provided for all UI buttons via `IDnowScreenHeaderConfiguration`. The default label for the left button is "Close button".
- **Type**: Button (for UI buttons within the header view)

### IDnowButton
- **Label**: Uses the default accessibility label for `UIButton`. Custom labels should be provided if the button contains only an icon.
- **Type**: Button

### IDnowControls
- **Label**: "Checkbox: title, description, error: error text"
- **Value**: "Selected" or "Deselected"
- **Type**: Button

### IDnowInfoView
- **Label**: Default label includes the text and a close button labeled "Close button".
- **Type**: Static Text and Button (for the close button)

### IDnowDatePicker
- **Label**: The date in the format "EEEE, d. MMMM yyyy" (e.g., "Monday, 4. July 2024").
- **Type**: Picker

### IDnowPinView
- **Label**: "Pin input field: <pin_value>, error: <error>"
- **Type**: Text Field

### IDnowSegmentedControl
- **Label**: Should be configured by the integrator, especially if it contains only icons. Proper labels must be provided for each segment.
- **Type**: Segmented Control

## Default System-Generated Accessibility Values
All other UI elements in the design system use default system-generated accessibility values unless specified otherwise. It is important to verify these defaults to ensure they provide a meaningful and accurate description of each element’s function and state.

## Best Practices
- **Custom Labels**: Always provide custom labels for buttons and controls that contain icons to ensure voiceover users can understand their purpose.
- **Descriptive Labels**: Ensure labels are descriptive and provide context, such as including error messages or status indicators.
- **Consistent Format**: Use a consistent format for labels, especially for complex elements like forms and controls, to make the interface predictable and easier to navigate.

By adhering to these guidelines, we can create a more accessible and user-friendly interface for all users, including those relying on voiceover support.


