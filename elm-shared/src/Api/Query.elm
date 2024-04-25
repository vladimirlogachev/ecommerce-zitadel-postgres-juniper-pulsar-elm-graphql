-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Query exposing (..)

import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import ScalarCodecs


productsV1 :
    SelectionSet decodesTo Api.Object.Product
    -> SelectionSet (List decodesTo) RootQuery
productsV1 object____ =
    Object.selectionForCompositeField "productsV1" [] object____ (Basics.identity >> Decode.list)


cartV1 :
    SelectionSet decodesTo Api.Object.Cart
    -> SelectionSet decodesTo RootQuery
cartV1 object____ =
    Object.selectionForCompositeField "cartV1" [] object____ Basics.identity


pickupPointsV1 :
    SelectionSet decodesTo Api.Object.PickupPoint
    -> SelectionSet (List decodesTo) RootQuery
pickupPointsV1 object____ =
    Object.selectionForCompositeField "pickupPointsV1" [] object____ (Basics.identity >> Decode.list)


myOrdersV1 :
    SelectionSet decodesTo Api.Object.Order
    -> SelectionSet (List decodesTo) RootQuery
myOrdersV1 object____ =
    Object.selectionForCompositeField "myOrdersV1" [] object____ (Basics.identity >> Decode.list)


adminProductsV1 :
    SelectionSet decodesTo Api.Object.Product
    -> SelectionSet (List decodesTo) RootQuery
adminProductsV1 object____ =
    Object.selectionForCompositeField "adminProductsV1" [] object____ (Basics.identity >> Decode.list)


type alias AdminProductV1RequiredArguments =
    { productId : String }


adminProductV1 :
    AdminProductV1RequiredArguments
    -> SelectionSet decodesTo Api.Object.Product
    -> SelectionSet decodesTo RootQuery
adminProductV1 requiredArgs____ object____ =
    Object.selectionForCompositeField "adminProductV1" [ Argument.required "productId" requiredArgs____.productId Encode.string ] object____ Basics.identity


adminCustomerOrdersV1 :
    SelectionSet decodesTo Api.Object.CustomerOrder
    -> SelectionSet (List decodesTo) RootQuery
adminCustomerOrdersV1 object____ =
    Object.selectionForCompositeField "adminCustomerOrdersV1" [] object____ (Basics.identity >> Decode.list)
