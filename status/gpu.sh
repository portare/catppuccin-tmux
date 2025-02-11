show_gpu() {
  tmux set -g @gpu_low_icon " "
  tmux set -g @gpu_medium_icon " "
  tmux set -g @gpu_high_icon " "
  tmux set -g @gpu_low_bg_color "$thm_green"
  tmux set -g @gpu_medium_bg_color "$thm_orange"
  tmux set -g @gpu_high_bg_color "$thm_red"
  local index=$1
  local icon="$(get_tmux_option " " "#{gpu_icon}")"
  local color="$(get_tmux_option " " "#{gpu_bg_color}")"
  local text="$(get_tmux_option " " "#{gpu_percentage}")"

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
