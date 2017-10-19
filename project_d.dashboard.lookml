- dashboard: project_dandelion
  title: Project Dandelion
  layout: newspaper
  elements:
  - name: Project Dandelion - Applications tabular (application date)
    title: Project Dandelion - Applications tabular (application date)
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.counts
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: after 10 days ago
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src 0
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    font_size: '10'
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    series_labels:
      loans_dashboard.application_date: App Date
      loans_dashboard.counts: Apps
      loans_dashboard.channel_src: Channel
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 5
    col: 14
    width: 10
    height: 9
  - name: Project Dandelion - Approvals tabular (application date)
    title: Project Dandelion - Approvals tabular (application date)
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    - loans_dashboard.count_accepted_apps
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: 10 days
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src 0
    - loans_dashboard.application_date
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    font_size: '9'
    series_labels:
      loans_dashboard.application_date: App Date
      loans_dashboard.count_accepted_apps: Approvals
      loans_dashboard.channel_src: Channel
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 19
    col: 14
    width: 10
    height: 9
  - name: Project Dandelion - Applications since 18 September 2017
    title: Project Dandelion - Applications since 18 September 2017
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.counts
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 100
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    font_size: '10'
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    y_axes:
    - label: Applications
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: MoneyfactsGroup
        name: MoneyfactsGroup
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: TotallyMoney
        name: TotallyMoney
      - id: uSwitch
        name: uSwitch
    x_axis_label: ''
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 0
    col: 0
    width: 14
    height: 5
  - name: Project Dandelion - Sales tabular (application date)
    title: Project Dandelion - Sales tabular (application date)
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    - loans_dashboard.count_taken_up_apps
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: after 10 days ago
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src 0
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    font_size: '9'
    x_axis_label: Application Date
    y_axes:
    - label: Sales
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    series_labels:
      loans_dashboard.application_date: App Date
      loans_dashboard.count_taken_up_apps: Sales
      loans_dashboard.channel_src: Channel
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 33
    col: 14
    width: 10
    height: 7
  - name: Project Dandelion - Loans value (application date)
    title: Project Dandelion - Loans value (application date)
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.total_amount
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: after 10 days ago
      loans_dashboard.final_decision: Taken Up
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src
    - loans_dashboard.application_date desc
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: '9'
    x_axis_label: Application Date
    y_axes:
    - label: Total Loan Value
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 46
    col: 0
    width: 14
    height: 7
  - name: Project Dandelion - Approvals since 18 September 2017 tabular
    title: Project Dandelion - Approvals since 18 September 2017 tabular
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.channel_src
    - loans_dashboard.count_accepted_apps
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.count_accepted_apps desc
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    font_size: '9'
    y_axes:
    - label: Approvals
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    x_axis_label: Application Date
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 14
    col: 14
    width: 10
    height: 5
  - name: Project Dandelion - Approvals (application date)
    title: Project Dandelion - Approvals (application date)
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    - loans_dashboard.count_accepted_apps
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: after 10 days ago
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.application_date desc
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    font_size: '9'
    y_axes:
    - label: Approvals
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    x_axis_label: Application Date
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 19
    col: 0
    width: 14
    height: 9
  - name: Project Dandelion - Sales since 18 September 2017
    title: Project Dandelion - Sales since 18 September 2017
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.count_taken_up_apps
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    font_size: '9'
    x_axis_label: ''
    y_axes:
    - label: Sales
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 28
    col: 0
    width: 14
    height: 5
  - name: Project Dandelion - Sales since 18 September 2017 tabular
    title: Project Dandelion - Sales since 18 September 2017 tabular
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.count_taken_up_apps
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.count_taken_up_apps desc
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    font_size: '9'
    x_axis_label: ''
    y_axes:
    - label: Sales
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 28
    col: 14
    width: 10
    height: 5
  - name: Project Dandelion - Sales (application date)
    title: Project Dandelion - Sales (application date)
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    - loans_dashboard.count_taken_up_apps
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    sorts:
    - loans_dashboard.application_date desc
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    font_size: '9'
    x_axis_label: Application Date
    y_axes:
    - label: Sales
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 33
    col: 0
    width: 14
    height: 7
  - name: Project Dandelion - Applications (application date)
    title: Project Dandelion - Applications (application date)
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.counts
    - loans_dashboard.application_date
    - looker_ITOs_source_codes.source
    pivots:
    - looker_ITOs_source_codes.source
    fill_fields:
    - loans_dashboard.application_date
    sorts:
    - loans_dashboard.application_date desc
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    font_size: '10'
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    y_axes:
    - label: Applications
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: MoneyfactsGroup
        name: MoneyfactsGroup
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: TotallyMoney
        name: TotallyMoney
      - id: uSwitch
        name: uSwitch
    x_axis_label: Application Date
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 5
    col: 0
    width: 14
    height: 9
  - name: Project Dandelion - Applications since 18 September 2017 tabular
    title: Project Dandelion - Applications since 18 September 2017 tabular
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.counts
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.counts desc
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    font_size: '10'
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    y_axes:
    - label: Applications
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: MoneyfactsGroup
        name: MoneyfactsGroup
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: TotallyMoney
        name: TotallyMoney
      - id: uSwitch
        name: uSwitch
    x_axis_label: Application Date
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 0
    col: 14
    width: 10
    height: 5
  - name: Project Dandelion - Loans value since 18 September 2017
    title: Project Dandelion - Loans value since 18 September 2017
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.total_amount
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.final_decision: Taken Up
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: '9'
    x_axis_label: ''
    y_axes:
    - label: Total Loan Value
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 40
    col: 0
    width: 14
    height: 6
  - name: Project Dandelion - Loans value since 18 September 2017 tabular
    title: Project Dandelion - Loans value since 18 September 2017 tabular
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.total_amount
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.final_decision: Taken Up
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.total_amount desc
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    hidden_series: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: '9'
    x_axis_label: Application Date
    y_axes:
    - label: Total Loan Value
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 40
    col: 14
    width: 10
    height: 6
  - name: Project Dandelion - Loan value tabular (application date)
    title: Project Dandelion - Loan value tabular (application date)
    model: fsmi
    explore: loans_dashboard
    type: table
    fields:
    - loans_dashboard.total_amount
    - loans_dashboard.application_date
    - loans_dashboard.channel_src
    pivots:
    - loans_dashboard.channel_src
    fill_fields:
    - loans_dashboard.application_date
    filters:
      loans_dashboard.application_date: after 10 days ago
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src 0
    - loans_dashboard.application_date
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    query_timezone: Europe/London
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
    stacking: normal
    show_value_labels: true
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: '9'
    x_axis_label: Total Loan Value
    y_axes:
    - label: Application Date
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    series_labels:
      loans_dashboard.application_date: App Date
      loans_dashboard.total_amount: Loan Value
      loans_dashboard.channel_src: Channel
    listen:
      Last 10 days: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 46
    col: 14
    width: 10
    height: 7
  - name: Project Dandelion - Approvals since 18 September 2017
    title: Project Dandelion - Approvals since 18 September 2017
    model: fsmi
    explore: loans_dashboard
    type: looker_bar
    fields:
    - loans_dashboard.channel_src
    - loans_dashboard.count_accepted_apps
    pivots:
    - loans_dashboard.channel_src
    filters:
      loans_dashboard.application_date: after 2017/09/18
      loans_dashboard.project_filter: Project Dandelion
    sorts:
    - loans_dashboard.channel_src
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    stacking: normal
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
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Black to Gray'
    series_colors:
      AARoutePlanner - loans_dashboard.counts: "#efe414"
      Money - loans_dashboard.counts: "#16b541"
      MoneyfactsGroup - loans_dashboard.counts: "#0049fc"
      Moneysupermarket - loans_dashboard.counts: "#b192d3"
      Quidco - loans_dashboard.counts: "#f26503"
      TopcashbackLtd - loans_dashboard.counts: "#15aeae"
      TotallyMoney - loans_dashboard.counts: "#557d43"
      uSwitch - loans_dashboard.counts: "#00a2ff"
    hidden_series: []
    font_size: '9'
    y_axes:
    - label: Approvals
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AARoutePlanner
        name: AARoutePlanner
      - id: Money
        name: Money
      - id: Moneysupermarket
        name: Moneysupermarket
      - id: Quidco
        name: Quidco
      - id: TopcashbackLtd
        name: TopcashbackLtd
      - id: uSwitch
        name: uSwitch
    x_axis_label: ''
    listen:
      Since inception: loans_dashboard.application_date
      Project Filter: loans_dashboard.project_filter
    row: 14
    col: 0
    width: 14
    height: 5
  filters:
  - name: Since inception
    title: Since inception
    type: date_filter
    default_value: after 2017/09/18
    model: fsmi
    explore: loans_dashboard
    field:
    listens_to_filters: []
    allow_multiple_values: true
  - name: Last 10 days
    title: Last 10 days
    type: date_filter
    default_value: after 10 days ago
    model:
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true
  - name: Project Filter
    title: Project Filter
    type: field_filter
    default_value: Project Dandelion
    model: fsmi
    explore: loans_dashboard
    field: loans_dashboard.project_filter
    listens_to_filters: []
    allow_multiple_values: true
