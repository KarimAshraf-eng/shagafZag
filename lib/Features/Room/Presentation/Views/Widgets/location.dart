import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final double latitude = 30.5868068;
  final double longitude = 31.524481;
  late MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  void resetLocation() {
    mapController.move(LatLng(latitude, longitude), 17.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              SvgPicture.asset(
                location,
                // ignore: deprecated_member_use
                color: ShagafColors.secondaryColor,
                width: 30,
              ),
              Text(
                "Location",
                style: ShagafFontStyles.redSemiBold16,
              ),
            ],
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: 342.w,
              height: 145.h,
              child: FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  center: LatLng(latitude, longitude),
                  zoom: 17.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: const ['a', 'b', 'c'],
                    maxZoom: 40.0,
                    minZoom: 12.0,
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80.0.w,
                        height: 80.0.h,
                        point: LatLng(latitude, longitude),
                        builder: (ctx) => GestureDetector(
                          onTap: () {
                            MapsLauncher.launchCoordinates(latitude, longitude);
                          },
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                resetLocation();
              },
              icon: const Icon(HeroIcons.map_pin),
            )
          ],
        ),
        20.verticalSpace,
      ],
    );
  }
}