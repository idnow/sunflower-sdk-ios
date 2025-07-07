# View Configuration

Most of the custom components that inherit from the ```IDnowView``` conform to the ```IDnowConfigurableView``` protocol.

```
public protocol IDnowConfigurableView {
    associatedtype Configuration
    
    func configure(_ configuration: Configuration)
}
```

This protocol defines a ```configure``` method that is responsible for applying the appropriate values for each view. Each view that conforms to this protocol must implement a struct that exposes all the things that can be configured (e.g. ```IDnowButtonConfiguration```).