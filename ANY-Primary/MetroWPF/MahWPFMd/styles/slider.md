Title: Slider
Description: The Slider styles
---

This control has several styles in MahApps.Metro:

## Default

![](images/slider_standard.png) 

This is the basic style for the `Slider`. It applies automatically if you don't use a custom style.
If you want to base your custom style on that style, you need to add `BasedOn="{StaticResource MetroSlider}"`

## FlatSlider

![](images/slider_cube.png) 

To use that style you need to load resource dictionary
`<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Controls.FlatSlider.xaml" />`
and explicitly set the style of the `Slider` to `Style="{DynamicResource FlatSlider}"`

This style could be dynamically changed to:

![](images/slider_tick.png)

For that you need just to change TickPlacement property from None to any other.
