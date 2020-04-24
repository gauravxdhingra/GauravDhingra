'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "1450c3891c127ad706f5b641d0c3d1c8",
"assets/assets/fonts/OpenSans-Bold.ttf": "1025a6e0fb0fa86f17f57cc82a6b9756",
"assets/assets/fonts/OpenSans-ExtraBold.ttf": "fb7e3a294cb07a54605a8bb27f0cd528",
"assets/assets/fonts/OpenSans-Light.ttf": "2d0bdc8df10dee036ca3bedf6f3647c6",
"assets/assets/fonts/OpenSans-Regular.ttf": "3ed9575dcc488c3e3a5bd66620bdf5a4",
"assets/FontManifest.json": "c855b27c56120013d66439af28510e98",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "65870608bbf9ac098110f293a3d368fb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_brand_icons/fonts/brands.ttf": "c68086e056cc711231ec09ea8b005516",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"Icon-512.png": "b414597e01e36cc52f34fe8b79ee3d09",
"icons/Icon-192.png": "78ed16e9b3d5d3808a78174d0ec67e10",
"icons/Icon-512.png": "b414597e01e36cc52f34fe8b79ee3d09",
"index.html": "c88cff7a30fe1785ebd54ca23491233b",
"/": "c88cff7a30fe1785ebd54ca23491233b",
"main.dart.js": "b5d7ef60ff79ea675b289ccedd15623f",
"manifest.json": "4c441772fce6435e740e6f4c17edf4e1"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
