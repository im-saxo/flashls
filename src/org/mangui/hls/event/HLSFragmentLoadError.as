/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package org.mangui.hls.event {
    /** Error Identifier **/
    public class HLSFragmentLoadError {

        private var _paused : Boolean;
        private var _fragmentIndex : int;
        private var _fragmentLevel : int;
        private var _httpError : Object;
        private var _retryCount : int;
        private var _hasLoadedFragments : Boolean;

        public function HLSFragmentLoadError(paused: Boolean, fragmentIndex: int, fragmentLevel : int, httpError : Object, retryCount : int, hasLoadedFragments : Boolean) {
            _paused = paused;
            _fragmentIndex = fragmentIndex;
            _fragmentLevel = fragmentLevel;
            _httpError = httpError;
            _retryCount = retryCount;
            _hasLoadedFragments = hasLoadedFragments;
        }

        public function get paused() : Boolean {
            return _paused;
        }

        public function get fragmentIndex() : int {
            return _fragmentIndex;
        }

        public function get fragmentLevel() : int {
            return _fragmentLevel;
        }

        public function get httpError() : Object {
            return _httpError;
        }

        public function get retryCount() : int {
            return _retryCount;
        }

        public function get hasLoadedFragments() : Boolean {
            return _hasLoadedFragments;
        }

        public function toString() : String {
            return "HLSFragmentLoadError(paused/fragmentIndex/fragmentLevel/httpError/retryCount/hasLoadedFragments)=" + _paused + "/" + _fragmentIndex + "/" + _httpError + "/" + _retryCount + "/" + _hasLoadedFragments;
        }
    }
}