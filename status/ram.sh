show_ram() {
  tmux set -g @ram_low_icon " "
  tmux set -g @ram_medium_icon " "
  tmux set -g @ram_high_icon " "
  tmux set -g @ram_low_bg_color "$thm_green"
  tmux set -g @ram_medium_bg_color "$thm_orange"
  tmux set -g @ram_high_bg_color "$thm_red"
  local index=$1
  local icon="$(get_tmux_option " " "#{ram_icon}")"
  local color="$(get_tmux_option " " "#{ram_bg_color}")"
  local text="$(get_tmux_option " " "#{ram_percentage}")"

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
