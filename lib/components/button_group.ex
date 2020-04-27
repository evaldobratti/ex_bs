defmodule ExBs.Components.ButtonGroup do
  @moduledoc false

  import ExComponent

  @button_sizes ExBs.Config.get_config(:button_sizes)

  @size_variants for size <- @button_sizes,
                     into: [],
                     do: {size, class: "btn-group-#{size}", option: true}

  @dropdown_variants ExBs.Config.get_config(:dropdown_variants)

  @type_variants for type <- @dropdown_variants,
                     into: [],
                     do: {type, class: type}

  @other_variants [vertical: [class: "btn-group-vertical", merge: false]]

  @button_group_variants @size_variants ++ @type_variants ++ @other_variants

  defcontenttag(:button_group, tag: :div, class: "btn-group", role: "group", variants: @button_group_variants)

  defcontenttag(:button_toolbar, tag: :div, class: "btn-toolbar", role: "toolbar")
end
