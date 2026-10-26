<!--CARD Rocket Telemetry Radio | September 2024 - December 2024 | /Images/portfolio/rocket_radio-1400.webp -->

# Rocket Telemetry Radio

## September 2024 - December 2024

![Rocket Radio](/Images/portfolio/rocket_radio-1400.webp)

I developed a prototype UHF radio transceiver for Olin College of Engineering’s rocketry team. It will allow for a reasonably high bandwidth and low latency half-duplex communication link to and from our spacecraft. The current configuration uses a SPI configurable COTS encoder board to generate a chirp spread spectrum (CSS) encoded signal. A CSS encoding scheme was chosen due to its high robustness to channel noise. The encoded signal is amplified filtered and by a switched 4 watt RF power amplifier. The ampilfier gain is granularly configurable using a combination of the built-in “high/low” gain control and electronics allowing for arbitrary adjustment of the amount of power supplied to the chip. The board also features a custom recieve pipeline including a low-noise amplifier and additional filtering. Switching between the sending and recieving pipelines is managed by a pair of SPDT RF switches.

![Rocket Radio Together](/Images/portfolio/rocket_radio_together-1400.webp)

The separate components of the prototype transceiver front-end were designed to link together using a series of SMA patch cables to allow for detailed testing and characterization of each component before integration.

Unfortunately this project got canceled when the rocket it was being designed for got canceled.
