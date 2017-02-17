require 'colorize'

class RodController < Trema::Controller
  timer_event :show_switches, interval: 10

  def start(_args)
    @switches = []
    logger.info "RodController has been started at #{Time.now}"
  end

  def switch_ready(datapath_id)
    @switches << datapath_id
    logger.info "Datapath #{datapath_id.to_hex} is #{'UP'.green}"
  end

  def switch_disconnected(datapath_id)
    @switches -= [datapath_id]
    logger.info "Datapath #{datapath_id.to_hex} is #{'DOWN'.red}"
  end

  private

  def show_switches
    switches_str = @switches.any? ? @switches.sort.map(&:to_hex).join(', ') : '--'
    logger.info "Datapaths currently UP: #{switches_str}"
  end
end
