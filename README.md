# Xcomponents

LiveView components that work across CSS frameworks.

## CSS Frameworks  

| Framework  | Status         |
|------------|----------------|
| Tailwind3  | in development |
| Milligram  | in development |
| Bootstrap5 | future         |
| Bulma      | future         |

## Components 

Core scope:  
- [Built in Components](https://hexdocs.pm/phoenix_live_view/Phoenix.Component.html#components) (especially "link")
- [CoreComponents](https://github.com/phoenixframework/phoenix/blob/3cf1f1065ce11a906bd04b7841814cdced3f0df2/installer/templates/phx_web/components/core_components.ex)

Out of scope: 
- Component definitions inspired by [Bootstrap5](https://getbootstrap.com/docs/5.0/getting-started/introduction/) (maybe in future?)
- Component definitions inspired by [DaisyUI](https://daisyui.com/) (maybe in future?)
- Everything else

## Namespacing 

Component modules: 
- `Xcomponents.Tailwind3`
- `Xcomponents.Milligram`
- `Xcomponents.Bootstrap5`
- `Xcomponents.Bulma`

Component names are prefixed by "x".  eg `<.link ...>` -> `<.xlink ...>`

## Code Organization 

The [Xcomponents Repo][gh] is an umbrella project.  This was done to make it
easier to demo and test the Xcomponents components against a variety of CSS
frameworks.  

| Umbrella Subapp   | Description                                  |
|-------------------|----------------------------------------------|
| `xcomponents`     | the components                               |
| `xdemo_base`      | phoenix app with a landing page              |
| `xdemo_milligram` | phoenix app with Xcomponents using Milligram |
| `xdemo_tailwind3` | phoenix app with Xcomponents using Tailwind3 |
| `xdemo_util`      | utility modules to support the demo apps     |

Note that the Xcomponents package (TBD) on hex.pm contains only the
`xcomponents` subapp, not the demo apps.

[gh]: https://github.com/andyl/xcomponents

## Installation

Xcomponents can be installed in your own LV application by adding
`xcomponents` to your list of dependencies in `mix.exs`:

Using the path option: 
```elixir
def deps do
  [
    {:xcomponents, 
      path: "~/src_root/xcomponents/apps/xcomponents"}
  ]
end
```

Using the github option: 
```elixir
def deps do
  [
    {:xcomponents, 
      github: "andyl/xcomponents",
      subdir: "apps/xcomponents"}
  ]
end
```

Using the hex option: 
```elixir
def deps do
  [
    {:xcomponents, "~> 0.0.1"}
  ]
end
```

After that:

    $ mix deps.get && mix deps.compile

Valid Framework Modules include:

    - Xcomponents.Milligram
    - Xcomponents.Tailwind3 

Now you can use Xcomponents in your LiveViews and LiveComponents:

    defmodule MyApp.Live.Asdf do
    end

## Customizing Xcomponents

Instructions on how to tweak Xcomponents CSS TBD.

## Extending Xcomponents

Instruction on how to create new Xcomponents modules TBD.

## Development Roadmap 

- [ ] Build out minimal home page 
- [ ] Build out Tailwind3 site 
- [ ] Add `PhxLiveStorybook` to Tailwind3 site 
- [ ] Build out Milligram site 
- [ ] Add `PhxLiveStorybook` to Milligram site 
- [ ] Fix Dockerfile 
- [ ] Publish Docker image 
- [ ] Publish to Fly.io 

## Help Wanted 

Firstly: I'm only going to develop components that I'm using myself on my
current projects.  So initially there's going to be a lot of blanks in the
Xcomponents `CanIUse` table.

Pull requests welcome!

Secondly: Designers needed!  My goals are that the Xcomponents will have
minimal, simple, consistent styling.  Hopefully easy work for a person with
good design sensibility.

