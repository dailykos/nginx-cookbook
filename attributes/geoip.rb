#
# Cookbook Name:: nginx
# Attributes:: geoip
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#
# Copyright 2012-2013, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['nginx']['geoip']['path']                 = '/srv/geoip'
default['nginx']['geoip']['enable_city']          = true
default['nginx']['geoip']['country_dat_url']      = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = 'b418d2b412054526595a548e7b5258ec56bba26f9f44771afca3046a7c5fdca2'
default['nginx']['geoip']['city_dat_url']         = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum']    = 'd3ff309f21d2833f0d057d37d767f5e3d50deb1f2f52ff6afbe95353c82a21cc'
default['nginx']['geoip']['lib_version']          = '1.6.3'
lib_version = node['nginx']['geoip']['lib_version'] # convenience variable for line length
default['nginx']['geoip']['lib_url']              = "https://github.com/maxmind/geoip-api-c/releases/download/v#{lib_version}/GeoIP-#{lib_version}.tar.gz"
default['nginx']['geoip']['lib_checksum']         = 'e483839a81a91c3c85df89ef409fc7b526c489e0355d537861cfd1ea9534a8f2'
