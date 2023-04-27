import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start MainSite Group Code

class MainSiteGroup {
  static String baseUrl = 'https://app.pickawow.com/';
  static Map<String, String> headers = {};
  static AddToCartCall addToCartCall = AddToCartCall();
  static LoginCall loginCall = LoginCall();
  static GetCustomerCall getCustomerCall = GetCustomerCall();
  static GetCartDetailsTokenCall getCartDetailsTokenCall =
      GetCartDetailsTokenCall();
  static LogoutCall logoutCall = LogoutCall();
  static ProductsCall productsCall = ProductsCall();
  static CategoryCall categoryCall = CategoryCall();
  static UpdateCartCall updateCartCall = UpdateCartCall();
  static RemoveItemFromCartCall removeItemFromCartCall =
      RemoveItemFromCartCall();
  static EmptyCartCall emptyCartCall = EmptyCartCall();
  static GetAddressesCall getAddressesCall = GetAddressesCall();
  static GetAddressesByIdCall getAddressesByIdCall = GetAddressesByIdCall();
  static SaveAddressToCartCall saveAddressToCartCall = SaveAddressToCartCall();
  static SaveCustAddressesCall saveCustAddressesCall = SaveCustAddressesCall();
  static EditCustAddressCall editCustAddressCall = EditCustAddressCall();
  static DeleteCustAddressCall deleteCustAddressCall = DeleteCustAddressCall();
  static SaveShippingToCartCall saveShippingToCartCall =
      SaveShippingToCartCall();
  static SavePricingToCartCall savePricingToCartCall = SavePricingToCartCall();
  static SaveOrderCall saveOrderCall = SaveOrderCall();
}

class AddToCartCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? quantity,
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL21vdGhlcnNsYXB0cnVzdC5jb20vYXBpL2N1c3RvbWVyL2xvZ2luIiwiaWF0IjoxNjc5NzQyOTIzLCJleHAiOjE2Nzk3NDY1MjMsIm5iZiI6MTY3OTc0MjkyMywianRpIjoia0huakxiOU1VNmcyeVl0USIsInN1YiI6IjEiLCJwcnYiOiI4ZmNhMDg4YWJhZTJmOWE4Zjg0YTVmMGJmNmE2NTI0NDkwNTViZTAwIn0.yxVPXKeGLVZKfTN5OlnJ5Ngfys9xqJ9cxYq4KmCaZ54',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AddToCart',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/checkout/cart/add/${id}?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'product_id': id,
        'quantity': quantity,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${MainSiteGroup.baseUrl}api/customer/login?token=true',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class GetCustomerCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCustomer',
      apiUrl: '${MainSiteGroup.baseUrl}api/customer/get',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCartDetailsTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCartDetailsToken',
      apiUrl: '${MainSiteGroup.baseUrl}api/checkout/cart',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic itemsCount(dynamic response) => getJsonField(
        response,
        r'''$.data.items_count''',
      );
  dynamic items(dynamic response) => getJsonField(
        response,
        r'''$.data.items''',
        true,
      );
  dynamic orignalImage(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].product.images[:].original_image_url''',
        true,
      );
  dynamic itemsQuantity(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].quantity''',
        true,
      );
  dynamic addProdID(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].additional.product_id''',
        true,
      );
  dynamic addProdQuantity(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].additional.quantity''',
        true,
      );
  dynamic prodDescription(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].product.description''',
        true,
      );
  dynamic prodImageId(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].product.images[:].id''',
        true,
      );
  dynamic prodName(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].product.name''',
        true,
      );
  dynamic prodFprice(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].product.formated_price''',
        true,
      );
  dynamic itemsId(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].id''',
        true,
      );
  dynamic grandTotal(dynamic response) => getJsonField(
        response,
        r'''$.data.grand_total''',
      );
  dynamic grandTotalF(dynamic response) => getJsonField(
        response,
        r'''$.data.formated_grand_total''',
      );
  dynamic discountF(dynamic response) => getJsonField(
        response,
        r'''$.data.formated_discount''',
      );
  dynamic taxTotalF(dynamic response) => getJsonField(
        response,
        r'''$.data.formated_tax_total''',
      );
  dynamic shippingaddressname(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.name''',
      );
  dynamic shippingaddressfirstname(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.first_name''',
      );
  dynamic shippingaddresslastname(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.last_name''',
      );
  dynamic shippingaddressemail(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.email''',
      );
  dynamic shippingaddressaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.address1''',
        true,
      );
  dynamic shippingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.country_name''',
      );
  dynamic shippingaddressstate(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.state''',
      );
  dynamic shippingaddresscity(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.city''',
      );
  dynamic shippingaddresspostcode(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.postcode''',
      );
  dynamic shippingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.shipping_address.phone''',
      );
}

class LogoutCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '${MainSiteGroup.baseUrl}api/customer/logout',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProductsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Products',
      apiUrl: '${MainSiteGroup.baseUrl}api/products',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic origImage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].images[:].original_image_url''',
        true,
      );
  dynamic smalImage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].images[:].small_image_url''',
        true,
      );
  dynamic medImage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].images[:].medium_image_url''',
        true,
      );
  dynamic largeImage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].images[:].large_image_url''',
        true,
      );
  dynamic simpleProdID(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
      );
}

class CategoryCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Category',
      apiUrl: '${MainSiteGroup.baseUrl}api/categories',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateCartCall {
  Future<ApiCallResponse> call({
    String? quantity = '',
    String? cartItemId = '',
    String? token = '',
  }) {
    final body = '''
{
  "qty": {
    "${cartItemId}": "${quantity}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCart',
      apiUrl: '${MainSiteGroup.baseUrl}api/checkout/cart/update?token=${token}',
      callType: ApiCallType.PUT,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RemoveItemFromCartCall {
  Future<ApiCallResponse> call({
    int? cartItemId,
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RemoveItemFromCart',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/checkout/cart/remove-item/${cartItemId}',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'cart_item_id': cartItemId,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic itemsId(dynamic response) => getJsonField(
        response,
        r'''$.data.items[:].id''',
        true,
      );
}

class EmptyCartCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EmptyCart',
      apiUrl: '${MainSiteGroup.baseUrl}api/checkout/cart/empty',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAddressesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAddresses',
      apiUrl: '${MainSiteGroup.baseUrl}api/addresses/',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phone''',
        true,
      );
  dynamic postcode(dynamic response) => getJsonField(
        response,
        r'''$.data[:].postcode''',
        true,
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.data[:].city''',
        true,
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.data[:].state''',
        true,
      );
  dynamic countryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].country_name''',
        true,
      );
  dynamic countryCode(dynamic response) => getJsonField(
        response,
        r'''$.data[:].country''',
        true,
      );
  dynamic address1(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address1''',
        true,
      );
  dynamic vatId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].vat_id''',
        true,
      );
  dynamic ln(dynamic response) => getJsonField(
        response,
        r'''$.data[:].last_name''',
        true,
      );
  dynamic fn(dynamic response) => getJsonField(
        response,
        r'''$.data[:].first_name''',
        true,
      );
  dynamic addId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address1[0]''',
        true,
      );
}

class GetAddressesByIdCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? addressId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAddressesById',
      apiUrl: '${MainSiteGroup.baseUrl}api/addresses/${addressId}',
      callType: ApiCallType.GET,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.data.state''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.data.country''',
      );
  dynamic countryName(dynamic response) => getJsonField(
        response,
        r'''$.data.country_name''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data.phone''',
      );
  dynamic defaultAddr(dynamic response) => getJsonField(
        response,
        r'''$.data.is_default''',
      );
  dynamic fn(dynamic response) => getJsonField(
        response,
        r'''$.data.first_name''',
      );
  dynamic address1(dynamic response) => getJsonField(
        response,
        r'''$.data.address1[0]''',
      );
  dynamic addId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  dynamic postcode(dynamic response) => getJsonField(
        response,
        r'''$.data.postcode''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.data.city''',
      );
}

class SaveAddressToCartCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? address = '',
    String? useForShipping = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? city = '',
    String? state = '',
    String? postcode = '',
    String? country = '',
    String? phone = '',
    String? saddress = '',
  }) {
    final body = '''
{
  "billing": {
    "address1": {
      "0": "${address}"
    },
    "use_for_shipping": "${useForShipping}",
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "city": "${city}",
    "state": "${state}",
    "postcode": "${postcode}",
    "country": "${country}",
    "phone": "${phone}"
  },
  "shipping": {
    "address1": {
      "0": "${saddress}"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveAddressToCart',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/checkout/save-address?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billingAddressName(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.name''',
      );
  dynamic billingaddressaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.address1''',
        true,
      );
  dynamic billingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.country_name''',
      );
  dynamic billingaddressstate(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.state''',
      );
  dynamic billingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.phone''',
      );
  dynamic hippingaddressname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.name''',
      );
  dynamic hippingaddressemail(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.email''',
      );
  dynamic shippingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.country_name''',
      );
  dynamic shippingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.phone''',
      );
}

class SaveCustAddressesCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? address = '',
    String? countryName = '',
    String? firstName = '',
    String? city = '',
    String? state = '',
    String? postcode = '',
    String? country = '',
    String? phone = '',
    String? defaultAddress = '',
  }) {
    final body = '''
{
  "address1": {
    "0": "${address}"
  },
  "first_name": "${firstName}",
  "city": "${city}",
  "state": "${state}",
  "postcode": "${postcode}",
  "country": "${country}",
  "country_name": "${countryName}",
  "phone": "${phone}",
  "default_address": "${defaultAddress}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveCustAddresses',
      apiUrl: '${MainSiteGroup.baseUrl}api/addresses/create?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billingAddressName(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.name''',
      );
  dynamic billingaddressaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.address1''',
        true,
      );
  dynamic billingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.country_name''',
      );
  dynamic billingaddressstate(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.state''',
      );
  dynamic billingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.phone''',
      );
  dynamic hippingaddressname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.name''',
      );
  dynamic hippingaddressemail(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.email''',
      );
  dynamic shippingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.country_name''',
      );
  dynamic shippingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.phone''',
      );
}

class EditCustAddressCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? address = '',
    String? countryName = '',
    String? firstName = '',
    String? city = '',
    String? state = '',
    String? pincode = '',
    String? country = '',
    String? phone = '',
    bool? defaultAddress,
    int? addressId,
  }) {
    final body = '''
{
  "id": ${addressId},
  "address1": {
    "0": "${address}"
  },
  "first_name": "${firstName}",
  "city": "${city}",
  "state": "${state}",
  "postcode": "${pincode}",
  "country": "${country}",
  "country_name": "${countryName}",
  "phone": "${phone}",
  "default_address": "${defaultAddress}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditCustAddress',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/addresses/${addressId}?token=${token}',
      callType: ApiCallType.PUT,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billingAddressName(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.name''',
      );
  dynamic billingaddressaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.address1''',
        true,
      );
  dynamic billingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.country_name''',
      );
  dynamic billingaddressstate(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.state''',
      );
  dynamic billingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.phone''',
      );
  dynamic hippingaddressname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.name''',
      );
  dynamic hippingaddressemail(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.email''',
      );
  dynamic shippingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.country_name''',
      );
  dynamic shippingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.phone''',
      );
}

class DeleteCustAddressCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? addressId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteCustAddress',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/addresses/${addressId}?token=${token}',
      callType: ApiCallType.DELETE,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billingAddressName(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.name''',
      );
  dynamic billingaddressaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.address1''',
        true,
      );
  dynamic billingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.country_name''',
      );
  dynamic billingaddressstate(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.state''',
      );
  dynamic billingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.billing_address.phone''',
      );
  dynamic hippingaddressname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.name''',
      );
  dynamic hippingaddressemail(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.email''',
      );
  dynamic shippingaddresscountryname(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.country_name''',
      );
  dynamic shippingaddressphone(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_address.phone''',
      );
}

class SaveShippingToCartCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? shippingMethod = '',
  }) {
    final body = '''
{
  "shipping_method": "${shippingMethod}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveShippingToCart',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/checkout/save-shipping?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic shippingmethod(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.shipping_method''',
      );
}

class SavePricingToCartCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? paymentMethodKey = '',
  }) {
    final body = '''
{
  "payment": {
    "method": "${paymentMethodKey}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SavePricingToCart',
      apiUrl:
          '${MainSiteGroup.baseUrl}api/checkout/save-payment?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic paymentmethod(dynamic response) => getJsonField(
        response,
        r'''$.data.cart.payment.method''',
      );
}

class SaveOrderCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SaveOrder',
      apiUrl: '${MainSiteGroup.baseUrl}api/checkout/save-order?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        ...MainSiteGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End MainSite Group Code

/// Start Razorpay Group Code

class RazorpayGroup {
  static String baseUrl = 'https://api.razorpay.com/v1';
  static Map<String, String> headers = {};
  static CheckoutembeddedCall checkoutembeddedCall = CheckoutembeddedCall();
}

class CheckoutembeddedCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "key_id": "rzp_test_VdFPGTxuC1NHz0",
  "amount": 100,
  "currency": "INR",
  "order_id": "order_LgPB8n8sxqGEJb",
  "name": "Acme Corp",
  "description": "A Wild Sheep Chase",
  "callback_url": "pickawow.com",
  "cancel_url": "pickawow.com"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkoutembedded',
      apiUrl: '${RazorpayGroup.baseUrl}/checkout/embedded',
      callType: ApiCallType.POST,
      headers: {
        ...RazorpayGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Razorpay Group Code

/// Start UniversalTut Group Code

class UniversalTutGroup {
  static String baseUrl = 'https://www.universal-tutorial.com/api';
  static Map<String, String> headers = {
    'api-token':
        'ffOkfO7rH7inc6OJYyZ5GjhmbkyNVnVtbIKBDgz0Fdc5UgXsnDeHvc14BbQ_E2QnMd0',
    'user-email': 'discretemicros@gmail.com',
  };
  static GetAccessTokenCall getAccessTokenCall = GetAccessTokenCall();
  static GetCountriesCall getCountriesCall = GetCountriesCall();
  static GetStatesByCountriesCall getStatesByCountriesCall =
      GetStatesByCountriesCall();
  static GetCitiesByStatesCall getCitiesByStatesCall = GetCitiesByStatesCall();
}

class GetAccessTokenCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAccessToken',
      apiUrl: '${UniversalTutGroup.baseUrl}/getaccesstoken',
      callType: ApiCallType.GET,
      headers: {
        ...UniversalTutGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic authTokenUT(dynamic response) => getJsonField(
        response,
        r'''$.auth_token''',
      );
}

class GetCountriesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountries',
      apiUrl: '${UniversalTutGroup.baseUrl}/countries',
      callType: ApiCallType.GET,
      headers: {
        ...UniversalTutGroup.headers,
        'api-token':
            'ffOkfO7rH7inc6OJYyZ5GjhmbkyNVnVtbIKBDgz0Fdc5UgXsnDeHvc14BbQ_E2QnMd0',
        'user-email': 'discretemicros@gmail.com',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStatesByCountriesCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? countryName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetStatesByCountries',
      apiUrl: '${UniversalTutGroup.baseUrl}/states/${countryName}',
      callType: ApiCallType.GET,
      headers: {
        ...UniversalTutGroup.headers,
        'api-token':
            'ffOkfO7rH7inc6OJYyZ5GjhmbkyNVnVtbIKBDgz0Fdc5UgXsnDeHvc14BbQ_E2QnMd0',
        'user-email': 'discretemicros@gmail.com',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCitiesByStatesCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? stateName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCitiesByStates',
      apiUrl: '${UniversalTutGroup.baseUrl}/cities/${stateName}',
      callType: ApiCallType.GET,
      headers: {
        ...UniversalTutGroup.headers,
        'api-token':
            'ffOkfO7rH7inc6OJYyZ5GjhmbkyNVnVtbIKBDgz0Fdc5UgXsnDeHvc14BbQ_E2QnMd0',
        'user-email': 'discretemicros@gmail.com',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End UniversalTut Group Code

class GetPincodeByCityCall {
  static Future<ApiCallResponse> call({
    String? city = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPincodeByCity',
      apiUrl: 'https://api.postalpincode.in/postoffice/${city}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic pincode(dynamic response) => getJsonField(
        response,
        r'''$[:].PostOffice[:].Pincode''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
