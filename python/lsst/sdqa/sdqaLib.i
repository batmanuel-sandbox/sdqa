// -*- lsst-c++ -*-

/* 
 * LSST Data Management System
 * Copyright 2008, 2009, 2010 LSST Corporation.
 * 
 * This product includes software developed by the
 * LSST Project (http://www.lsst.org/).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the LSST License Statement and 
 * the GNU General Public License along with this program.  If not, 
 * see <http://www.lsstcorp.org/LegalNotices/>.
 */
 
%define sdqa_DOCSTRING
"
Access to the classes from the sdqa library
"
%enddef

%feature("autodoc", "1");
%module(package="lsst.sdqa", docstring=sdqa_DOCSTRING) sdqaLib
#pragma SWIG nowarn=362                 // operator=  ignored

%{
#include "lsst/daf/base.h"
#include "lsst/daf/base/Persistable.h"
#include "lsst/sdqa/SdqaRating.h"
#include "lsst/sdqa/SdqaMetric.h"
#include "lsst/sdqa/SdqaThreshold.h"
#include "lsst/sdqa/SdqaImageStatus.h"
%}

%include "lsst/p_lsstSwig.i"

%lsst_exceptions()

SWIG_SHARED_PTR(SdqaRating, lsst::sdqa::SdqaRating);
SWIG_SHARED_PTR_DERIVED(PersistableSdqaRatingVector, 
    lsst::daf::base::Persistable,
    lsst::sdqa::PersistableSdqaRatingVector);

%include "lsst/daf/base/persistenceMacros.i"

%include "lsst/daf/base.h"
%include "lsst/daf/base/Persistable.h"
%include "lsst/sdqa/SdqaRating.h"
%include "lsst/sdqa/SdqaMetric.h"
%include "lsst/sdqa/SdqaThreshold.h"
%include "lsst/sdqa/SdqaImageStatus.h"

%template(SdqaRatingSet) std::vector<lsst::sdqa::SdqaRating::Ptr>;

%lsst_persistable(lsst::sdqa::PersistableSdqaRatingVector);


