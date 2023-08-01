from pydivert import WinDivert
def monitor_network():
    # Create a network filter to capture all IPv4 TCP packets.
    with WinDivert("ip and tcp") as w:
        # Set to store unique source IP addresses of connected devices.
        connected_ips = set()

        try:
            # Continuously capture and process packets.
            for packet in w:
                # Get the source IP address from the IPv4 header.
                src_ip = packet.src_addr

                # Add the source IP address to the set of connected IPs.
                connected_ips.add(src_ip)

                # Print the number of connected devices.
                print(f"Number of connected devices: {len(connected_ips)}", end='\r')

                # Reinject the packet back into the network.
                w.send(packet)
        except KeyboardInterrupt:
            print("\nMonitoring stopped.")

if __name__ == "__main__":
    monitor_network()
