var NativeEventsListener = (function() {
                            
                            this.onReceivedEvent = function(eventData) {
                                var eventHandler = function(){};
                            
                                switch (eventData.eventType) {
                                    case "nativeClick":
                                        eventHandler = nativeButtonClicked;
                                        break;
                                    default:
                                        break;
                                }
                                eventHandler(eventData);
                            };
                            
                            function nativeButtonClicked(eventData) {
                                nativeButtonClickLabel.innerHTML = 'Native button was clicked';
                            }
                            
                            return this;
                        
}());
                            