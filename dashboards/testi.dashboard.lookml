---
- dashboard: testi
  title: Test_61947295
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: x6X05EGVNDDcvirN5H5A7K
  elements:
  - title: Table calc
    name: Table calc
    model: thelook_lmbg
    explore: inventory_items
    type: looker_grid
    fields: [products.category, products.department, inventory_items.count]
    pivots: [products.department]
    sorts: [products.department, inventory_items.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Inventory Items Count
      value_format:
      value_format_name: percent_3
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_inventory_items_count
      args:
      - inventory_items.count
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: "${inventory_items.count}/${percent_of_inventory_items_count}/R"
      label: Custom Expr
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: custom_expr
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
