create or replace type ut_expectation_base force authid current_user as object(
  /*
  utPLSQL - Version 3
  Copyright 2016 - 2019 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */
  actual_data         ut_data_value,
  description         varchar2(4000 char),

  --base matcher executors
  member procedure to_(self in ut_expectation_base, a_matcher ut_matcher_base),
  member procedure not_to(self in ut_expectation_base, a_matcher ut_matcher_base)
) not final not instantiable
/