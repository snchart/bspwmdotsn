killall -q polybar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example >> /tmp/example_bar.log
