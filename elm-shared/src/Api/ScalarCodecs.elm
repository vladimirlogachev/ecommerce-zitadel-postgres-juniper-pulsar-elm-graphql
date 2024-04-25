-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.ScalarCodecs exposing (..)

import Api.Scalar exposing (defaultCodecs)
import Json.Decode as Decode exposing (Decoder)


type alias Timestamp =
    Api.Scalar.Timestamp


type alias Unit =
    Api.Scalar.Unit


type alias UsdAmount =
    Api.Scalar.UsdAmount


type alias UsdPrice =
    Api.Scalar.UsdPrice


codecs : Api.Scalar.Codecs Timestamp Unit UsdAmount UsdPrice
codecs =
    Api.Scalar.defineCodecs
        { codecTimestamp = defaultCodecs.codecTimestamp
        , codecUnit = defaultCodecs.codecUnit
        , codecUsdAmount = defaultCodecs.codecUsdAmount
        , codecUsdPrice = defaultCodecs.codecUsdPrice
        }
