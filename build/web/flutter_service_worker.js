'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "e386d2a73f4b542e91dfe5742dd68f0a",
"assets/AssetManifest.bin.json": "414d76370cc14ce847651e2089a0bb19",
"assets/AssetManifest.json": "0e7353e6cc6fbcde29dbcc807b0df25f",
"assets/assets/image/en.png": "459d7c74a65627346d7a4cd71ea4bcfa",
"assets/assets/image/logo.png": "ece6cb596fe8a0f1ba78151b208a9e58",
"assets/assets/image/ru.png": "54b9e2699a326dc2c760212931212b0a",
"assets/assets/image/uz.png": "8f9acec3e3d7af3ef0dd0d4a771a1baa",
"assets/assets/svg/bnavigation/bell.svg": "dd81bf05a4b5db61a87cc049c2bcc868",
"assets/assets/svg/bnavigation/bell_active.svg": "14250216f25e8f50e043b2a4d0e80838",
"assets/assets/svg/bnavigation/chat.svg": "bc067cb7214a232ba06aeb6cdc6490ad",
"assets/assets/svg/bnavigation/chat_active.svg": "0f78d8676262316014c997635b49fe65",
"assets/assets/svg/bnavigation/home.svg": "2865cdfc09232d0132fb0e9593bb97a4",
"assets/assets/svg/bnavigation/home_active.svg": "a13c9d132bc8a49a5224a674d7e6cb4e",
"assets/assets/svg/bnavigation/search.svg": "6c65902193c568e04145189fe355428d",
"assets/assets/svg/bnavigation/search_active.svg": "6be1e9cad75fe57d50c384d23f9eda55",
"assets/assets/svg/classroom/add.svg": "82b7575da404b8c9b220ae049da5abea",
"assets/assets/svg/home/hide.svg": "48188dc6af6340a8d5c78323c687dc70",
"assets/assets/svg/home/pin.svg": "ff8f6bac66d70769a2c3a1845c314161",
"assets/assets/svg/home/poll.svg": "4205e20bc5c8fd843c192fc890b454ab",
"assets/assets/svg/icon/arrow.svg": "761a14a4752e277f4ebb07f9cf219d9b",
"assets/assets/svg/icon/back_route.svg": "dc4f773ca81f44d1d8c68d03160c114e",
"assets/assets/svg/icon/close.svg": "7fb5cad32f832d0f9c29d2bc1efef36c",
"assets/assets/svg/icon/export.svg": "4e491ee5d2f8f4a24f0962c32a832065",
"assets/assets/svg/icon/filter.svg": "c75401e4070d9b8861c128e670d65de8",
"assets/assets/svg/icon/like.svg": "233b4cf75c8ec30321d41677bc198c9f",
"assets/assets/svg/icon/logo.svg": "6a7d092434f12a5df457070b62ecaea0",
"assets/assets/svg/icon/message.svg": "64bb01065d7832f96aba44c0a1beb84a",
"assets/assets/svg/icon/search.svg": "023042af4c35716978a482a62a0ff359",
"assets/assets/svg/icon/threedot.svg": "8a6ddd0753e468018ec5f000ef37fc1a",
"assets/assets/svg/lang/uz.svg": "f1c06307d5d742fc4ae18f1fc69383f9",
"assets/assets/svg/members/blocked_chat.svg": "8d1afbff1bdb1f969e6ce37259643884",
"assets/assets/svg/members/calendar.svg": "bb1b84f046b38cc222b0ee12d8b688e4",
"assets/assets/svg/members/free.svg": "a4fe80e316cb6478c76747aa4932a42b",
"assets/assets/svg/members/lifetime_access.svg": "6cd7d75bd90cda8db5756db195f8344d",
"assets/assets/svg/members/location.svg": "a4929789d834ea1d1e4d13176dfc0ac0",
"assets/assets/svg/members/online.svg": "c939e78bf6280e33a5c3f47cd3133695",
"assets/assets/svg/modal/create_community.svg": "de99499bdb53089653a60c31fbacb746",
"assets/assets/svg/modal/discover.svg": "af0e79804d1c4fbe32f906d1c0614a15",
"assets/assets/svg/post/gif.svg": "95b8975cb285b504f50ec9a310d074eb",
"assets/assets/svg/post/link.svg": "21844e1526071e4a917d05b109e95932",
"assets/assets/svg/post/poll.svg": "1bd66c10faea15e17efdae31c9638217",
"assets/assets/svg/post/video.svg": "6e526092d96044fd6be0fdd6ec7978e4",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "906ba58e2c2a2f1e16ed66fc393dba4d",
"assets/NOTICES": "f1128a678fe7e3c6d3ae4337ce30c553",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "95008b022fa50ba737993023b3b2e20f",
"/": "95008b022fa50ba737993023b3b2e20f",
"main.dart.js": "8a0bab4d6330afc947dbc9a8617a5060",
"manifest.json": "4296b0c612a675e74f37ba4f637d7bd9",
"version.json": "54baeed09153b0285bdd02bacbce5825"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
