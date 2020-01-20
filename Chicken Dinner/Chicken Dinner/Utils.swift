//
//  Utils.swift
//  Chicken Dinner
//
//  Created by Geoffrey Overfield on 1/19/20.
//  Copyright © 2020 Geoffrey Overfield. All rights reserved.
//

import Foundation

public class Utils
{
    public class Location
    {
        public enum States : CaseIterable
        {
            case Alabama
            case Alaska
            case American_Samoa
            case Arizona
            case Arkansas
            case California
            case Colorado
            case Connecticut
            case Delaware
            case District_of_Columbia
            case Florida
            case Georgia
            case Guam
            case Hawaii
            case Idaho
            case Illinois
            case Indiana
            case Iowa
            case Kansas
            case Kentucky
            case Louisiana
            case Maine
            case Maryland
            case Massachusetts
            case Michigan
            case Minnesota
            case Mississippi
            case Missouri
            case Montana
            case Nebraska
            case Nevada
            case New_Hampshire
            case New_Jersey
            case New_Mexico
            case New_York
            case North_Carolina
            case North_Dakota
            case Northern_Mariana_Islands
            case Ohio
            case Oklahoma
            case Oregon
            case Pennsylvania
            case Puerto_Rico
            case Rhode_Island
            case South_Carolina
            case South_Dakota
            case Tennessee
            case Texas
            case Utah
            case Vermont
            case Virgin_Islands
            case Virginia
            case Washington
            case West_Virginia
            case Wisconsin
            case Wyoming
            case AA
            case AE
            case AP
        }
        
        public static var StateValues =
        [
            States.Alabama                  :   "Alabama",
            States.Alaska                   :   "Alaska",
            States.American_Samoa           :   "American Samoa",
            States.Arizona                  :   "Arizona",
            States.Arkansas                 :   "Arkansas",
            States.California               :   "California",
            States.Colorado                 :   "Colorado",
            States.Connecticut              :   "Connecticut",
            States.Delaware                 :   "Delaware",
            States.District_of_Columbia     :   "District of Columbia",
            States.Florida                  :   "Florida",
            States.Georgia                  :   "Georgia",
            States.Guam                     :   "Guam",
            States.Hawaii                   :   "Hawaii",
            States.Idaho                    :   "Idaho",
            States.Illinois                 :   "Illinois",
            States.Indiana                  :   "Indiana",
            States.Iowa                     :   "Iowa",
            States.Kansas                   :   "Kansas",
            States.Kentucky                 :   "Kentucky",
            States.Louisiana                :   "Louisiana",
            States.Maine                    :   "Maine",
            States.Maryland                 :   "Maryland",
            States.Massachusetts            :   "Massachusetts",
            States.Michigan                 :   "Michigan",
            States.Minnesota                :   "Minnesota",
            States.Mississippi              :   "Mississippi",
            States.Missouri                 :   "Missouri",
            States.Montana                  :   "Montana",
            States.Nebraska                 :   "Nebraska",
            States.Nevada                   :   "Nevada",
            States.New_Hampshire            :   "New Hampshire",
            States.New_Jersey               :   "New Jersey",
            States.New_Mexico               :   "New Mexico",
            States.New_York                 :   "New York",
            States.North_Carolina           :   "North Carolina",
            States.North_Dakota             :   "North Dakota",
            States.Northern_Mariana_Islands :   "Northern Mariana Islands",
            States.Ohio                     :   "Ohio",
            States.Oklahoma                 :   "Oklahoma",
            States.Oregon                   :   "Oregon",
            States.Pennsylvania             :   "Pennsylvania",
            States.Puerto_Rico              :   "Puerto Rico",
            States.Rhode_Island             :   "Rhode Island",
            States.South_Carolina           :   "South Carolina",
            States.South_Dakota             :   "South Dakota",
            States.Tennessee                :   "Tennessee",
            States.Texas                    :   "Texas",
            States.Utah                     :   "Utah",
            States.Vermont                  :   "Vermont",
            States.Virgin_Islands           :   "Virgin Islands",
            States.Virginia                 :   "Virginia",
            States.Washington               :   "Washington",
            States.West_Virginia            :   "West Virginia",
            States.Wisconsin                :   "Wisconsin",
            States.Wyoming                  :   "Wyoming",
            States.AA                       :   "AA",
            States.AE                       :   "AE",
            States.AP                       :   "AP"
        ]
        
        public static var StateValuesRev =
        [
            "Alabama"                   : States.Alabama,
            "Alaska"                    : States.Alaska,
            "American Samoa"            : States.American_Samoa,
            "Arizona"                   : States.Arizona,
            "Arkansas"                  : States.Arkansas,
            "California"                : States.California,
            "Colorado"                  : States.Colorado,
            "Connecticut"               : States.Connecticut,
            "Delaware"                  : States.Delaware,
            "District of Columbia"      : States.District_of_Columbia,
            "Florida"                   : States.Florida,
            "Georgia"                   : States.Georgia,
            "Guam"                      : States.Guam,
            "Hawaii"                    : States.Hawaii,
            "Idaho"                     : States.Idaho,
            "Illinois"                  : States.Illinois,
            "Indiana"                   : States.Indiana,
            "Iowa"                      : States.Iowa,
            "Kansas"                    : States.Kansas,
            "Kentucky"                  : States.Kentucky,
            "Louisiana"                 : States.Louisiana,
            "Maine"                     : States.Maine,
            "Maryland"                  : States.Maryland,
            "Massachusetts"             : States.Massachusetts,
            "Michigan"                  : States.Michigan,
            "Minnesota"                 : States.Minnesota,
            "Mississippi"               : States.Mississippi,
            "Missouri"                  : States.Missouri,
            "Montana"                   : States.Montana,
            "Nebraska"                  : States.Nebraska,
            "Nevada"                    : States.Nevada,
            "New Hampshire"             : States.New_Hampshire,
            "New Jersey"                : States.New_Jersey,
            "New Mexico"                : States.New_Mexico,
            "New York"                  : States.New_York,
            "North Carolina"            : States.North_Carolina,
            "North Dakota"              : States.North_Dakota,
            "Northern Mariana Islands"  : States.Northern_Mariana_Islands,
            "Ohio"                      : States.Ohio,
            "Oklahoma"                  : States.Oklahoma,
            "Oregon"                    : States.Oregon,
            "Pennsylvania"              : States.Pennsylvania,
            "Puerto Rico"               : States.Puerto_Rico,
            "Rhode Island"              : States.Rhode_Island,
            "South Carolina"            : States.South_Carolina,
            "South Dakota"              : States.South_Dakota,
            "Tennessee"                 : States.Tennessee,
            "Texas"                     : States.Texas,
            "Utah"                      : States.Utah,
            "Vermont"                   : States.Vermont,
            "Virgin Islands"            : States.Virgin_Islands,
            "Virginia"                  : States.Virginia,
            "Washington"                : States.Washington,
            "West Virginia"             : States.West_Virginia,
            "Wisconsin"                 : States.Wisconsin,
            "Wyoming"                   : States.Wyoming,
            "AA"                        : States.AA,
            "AE"                        : States.AE,
            "AP"                        : States.AP
        ]
    }
}
