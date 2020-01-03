module IBAN.Types exposing
    ( BBAN
    , CheckCode
    , Country(..)
    , Error(..)
    , Format(..)
    , IBAN(..)
    )

{-| This module have all the types needed to interact with the main IBAN module
-}


{-| Main IBAN type, that the information decomposed into different chunks
of information
-}
type IBAN
    = IBAN Country CheckCode BBAN


type alias CheckCode =
    String


type alias BBAN =
    String


{-| This types can be use in case of error to serialize into specific error
messages on the interface
-}
type Error
    = IBANLengthError Country { actual : Int, expected : Int }
    | InvalidCharacter
    | SanityCheckFailed
    | UnknownCountryCode String


{-| This type is needed to transform and `IBAN
-}
type Format
    = Textual
    | Electronic


{-| List of countries with `IBAN` type into a string

```
-}
type Country
    = Albania
    | Algeria
    | Andorra
    | Angola
    | Austria
    | Azerbaijan
    | Bahrain
    | Benin
    | Belarus
    | Belgium
    | BosniaHerzegovina
    | Brazil
    | BritishVirginIslands
    | Bulgaria
    | BurkinaFaso
    | Burundi
    | Cameroon
    | CapeVerde
    | CostaRica
    | Croatia
    | Cyprus
    | CzechRepublic
    | Denmark
    | DominicanRepublic
    | EastTimor
    | ElSalvador
    | Estonia
    | FaroeIslands
    | Finland
    | France
    | Georgia
    | Germany
    | Gibraltar
    | Greece
    | Greenland
    | Guatemala
    | Hungary
    | Iceland
    | Iran
    | Iraq
    | Ireland
    | Israel
    | Italy
    | IvoryCoast
    | Jordan
    | Kazakhstan
    | Kosovo
    | Kuwait
    | Latvia
    | Lebanon
    | Liechtenstein
    | Lithuania
    | Luxembourg
    | Macedonia
    | Madagascar
    | Mali
    | Malta
    | Mauritania
    | Mauritius
    | Monaco
    | Moldova
    | Montenegro
    | Mozambique
    | Netherlands
    | Norway
    | Pakistan
    | PalestinianTerritories
    | Poland
    | Portugal
    | Qatar
    | Romania
    | SaintLucia
    | SanMarino
    | SaoTomeAndPrincipe
    | SaudiArabia
    | Senegal
    | Serbia
    | Seychelles
    | Slovakia
    | Slovenia
    | Spain
    | Sweden
    | Switzerland
    | Tunisia
    | Turkey
    | Ukraine
    | UnitedArabEmirates
    | UnitedKingdom
