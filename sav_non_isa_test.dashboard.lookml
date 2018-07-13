- dashboard: sav_non_isa__new_issue_tracker
  title: SAV NON ISA - New Issue Tracker
  layout: newspaper
  elements:
  - name: SAV NON ISA Easy Saver Issue 5 Member Flag Check
    title: SAV NON ISA Easy Saver Issue 5 Member Flag Check
    model: fsmi
    explore: looker_sav_non_isa_dashboard
    type: looker_column
    fields:
    - looker_sav_non_isa_dashboard.count
    - looker_sav_non_isa_dashboard.member_flag
    - looker_sav_non_isa_dashboard.activation_week
    pivots:
    - looker_sav_non_isa_dashboard.member_flag
    fill_fields:
    - looker_sav_non_isa_dashboard.activation_week
    filters:
      looker_sav_non_isa_dashboard.account_status: ACTIVE
      looker_sav_non_isa_dashboard.activation_week: 4 weeks ago for 4 weeks
      looker_sav_non_isa_dashboard.subproductname: EASY SAVER - ISSUE 5
    sorts:
    - looker_sav_non_isa_dashboard.member_flag 0
    - looker_sav_non_isa_dashboard.activation_week
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    series_colors:
      Member - looker_sav_non_isa_dashboard.count: "#fce408"
    row: 0
    col: 0
    width: 12
    height: 8
  - name: SAV NON ISA - Member Saver Issue 2 Tracker
    title: SAV NON ISA - Member Saver Issue 2 Tracker
    model: fsmi
    explore: looker_sav_non_isa_dashboard
    type: looker_column
    fields:
    - looker_sav_non_isa_dashboard.member_flag
    - looker_sav_non_isa_dashboard.activation_week
    - looker_sav_non_isa_dashboard.count
    pivots:
    - looker_sav_non_isa_dashboard.member_flag
    fill_fields:
    - looker_sav_non_isa_dashboard.activation_week
    filters:
      looker_sav_non_isa_dashboard.account_status: ACTIVE
      looker_sav_non_isa_dashboard.activation_week: 4 weeks ago for 4 weeks
      looker_sav_non_isa_dashboard.subproductname: MEMBER SAVER - ISSUE 2
    sorts:
    - looker_sav_non_isa_dashboard.member_flag 0
    - looker_sav_non_isa_dashboard.activation_week
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_colors:
      Member - looker_sav_non_isa_dashboard.count: "#fce408"
      No - looker_sav_non_isa_dashboard.count: "#1f3e5a"
      Lapsed - looker_sav_non_isa_dashboard.count: "#a9c574"
      Missing - looker_sav_non_isa_dashboard.count: "#9fdee0"
    series_types: {}
    row: 0
    col: 12
    width: 12
    height: 8
  - name: Non ISA - Easy Saver Issue 6 Member split
    title: Non ISA - Easy Saver Issue 6 Member split
    model: fsmi
    explore: looker_sav_non_isa_dashboard
    type: table
    fields:
    - looker_sav_non_isa_dashboard.member_flag
    - looker_sav_non_isa_dashboard.count
    filters:
      looker_sav_non_isa_dashboard.subproductname: EASY SAVER - ISSUE 6
    sorts:
    - looker_sav_non_isa_dashboard.count desc
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 8
    col: 0
    width: 12
    height: 6
