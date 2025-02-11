show_cpu() {
  tmux set -g @cpu_low_icon " "
  tmux set -g @cpu_medium_icon " "
  tmux set -g @cpu_high_icon " "
  tmux set -g @cpu_low_bg_color "$thm_green"
  tmux set -g @cpu_medium_bg_color "$thm_orange"
  tmux set -g @cpu_high_bg_color "$thm_red"
  local index=$1
  local icon="$(get_tmux_option " " "#{cpu_icon}")"
  local color="$(get_tmux_option " " "#{cpu_bg_color}")"
  local text="$(get_tmux_option " " "#{cpu_percentage}")"

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
