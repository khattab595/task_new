// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:the_business_square/chat/data/repo/chat_repo.dart' as _i8;
import 'package:the_business_square/chat/logic/rooms_bloc/chat_rooms_bloc.dart'
    as _i9;
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart'
    as _i3;
import 'package:the_business_square/data/repository/auth/auth_repo.dart' as _i5;
import 'package:the_business_square/data/repository/category/category_repo.dart'
    as _i6;
import 'package:the_business_square/data/repository/live_stream/live_stream_repo.dart'
    as _i15;
import 'package:the_business_square/data/repository/notification/notofication_repo.dart'
    as _i17;
import 'package:the_business_square/data/repository/payment/payment_repo.dart'
    as _i18;
import 'package:the_business_square/data/repository/posts/posts_repo.dart'
    as _i19;
import 'package:the_business_square/data/repository/profile/user_repo.dart'
    as _i21;
import 'package:the_business_square/logic/add_user_to_live/add_user_to_live_bloc.dart'
    as _i26;
import 'package:the_business_square/logic/admin/add_new_category/add_new_category_bloc.dart'
    as _i23;
import 'package:the_business_square/logic/admin/admin_get_posts/admin_get_posts_bloc.dart'
    as _i4;
import 'package:the_business_square/logic/admin/change_post_status/change_post_status_bloc.dart'
    as _i7;
import 'package:the_business_square/logic/admin/coin/coin_bloc.dart' as _i10;
import 'package:the_business_square/logic/admin/company/company_bloc.dart'
    as _i11;
import 'package:the_business_square/logic/admin/delete_category/delete_category_bloc.dart'
    as _i12;
import 'package:the_business_square/logic/admin/logout/logout_bloc.dart'
    as _i16;
import 'package:the_business_square/logic/admin/nik_name/add_nik_name_bloc.dart'
    as _i24;
import 'package:the_business_square/logic/auth/auth_bloc.dart' as _i27;
import 'package:the_business_square/logic/category/category_bloc.dart' as _i28;
import 'package:the_business_square/logic/create_live/create_live_bloc.dart'
    as _i30;
import 'package:the_business_square/logic/email_verify/emailVerify_bloc.dart'
    as _i13;
import 'package:the_business_square/logic/end_live/end_live_bloc.dart' as _i33;
import 'package:the_business_square/logic/forget_password/forget_password_bloc.dart'
    as _i14;
import 'package:the_business_square/logic/get_live_streams/get_live_streams_bloc.dart'
    as _i34;
import 'package:the_business_square/logic/get_notifications/get_notifications_bloc.dart'
    as _i35;
import 'package:the_business_square/logic/get_posts/get_posts_bloc.dart'
    as _i36;
import 'package:the_business_square/logic/payment/auth_payment/auth_payment_bloc.dart'
    as _i38;
import 'package:the_business_square/logic/posts/add_post/add_post_bloc.dart'
    as _i25;
import 'package:the_business_square/logic/posts/delete_posts/delete_post_bloc.dart'
    as _i31;
import 'package:the_business_square/logic/posts/get_posts_user/get_posts_user_bloc.dart'
    as _i37;
import 'package:the_business_square/logic/posts/posts_search/posts_search_bloc.dart'
    as _i20;
import 'package:the_business_square/logic/profile/change_status_profile/change_status_profile_bloc.dart'
    as _i29;
import 'package:the_business_square/logic/profile/edit_profile/edit_profile_bloc.dart'
    as _i32;
import 'package:the_business_square/logic/profile/get_profile/profile_bloc.dart'
    as _i39;
import 'package:the_business_square/logic/reset_password/reset_password_bloc.dart'
    as _i22;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AdminFeatureRepoImp>(() => _i3.AdminFeatureRepoImp());
    gh.factory<_i4.AdminGetPostsBloc>(() => _i4.AdminGetPostsBloc(
        adminGetPostsRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i5.AuthRepoImp>(() => _i5.AuthRepoImp());
    gh.factory<_i6.CategoryRepoImp>(() => _i6.CategoryRepoImp());
    gh.factory<_i7.ChangePostStatusBloc>(() => _i7.ChangePostStatusBloc(
        changePostStatusRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i8.ChatRepoImp>(() => _i8.ChatRepoImp());
    gh.factory<_i9.ChatRoomsBloc>(
        () => _i9.ChatRoomsBloc(chatRepoImp: gh<_i8.ChatRepoImp>()));
    gh.factory<_i10.CoinBloc>(() =>
        _i10.CoinBloc(addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i11.CompanyBloc>(() =>
        _i11.CompanyBloc(addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i12.DeleteCategoryBloc>(() => _i12.DeleteCategoryBloc(
        addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i13.EmailVerifyBloc>(
        () => _i13.EmailVerifyBloc(authRepoImp: gh<_i5.AuthRepoImp>()));
    gh.factory<_i14.ForgetPasswordBloc>(
        () => _i14.ForgetPasswordBloc(authRepoImp: gh<_i5.AuthRepoImp>()));
    gh.factory<_i15.LiveStreamRepoImp>(() => _i15.LiveStreamRepoImp());
    gh.factory<_i16.LogOutBloc>(() =>
        _i16.LogOutBloc(addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i17.NotificationsRepoImp>(() => _i17.NotificationsRepoImp());
    gh.factory<_i18.PaymentRepoImp>(() => _i18.PaymentRepoImp());
    gh.factory<_i19.PostsRepoImp>(() => _i19.PostsRepoImp());
    gh.factory<_i20.PostsSearchBloc>(() =>
        _i20.PostsSearchBloc(postsSearchRepoImp: gh<_i19.PostsRepoImp>()));
    gh.factory<_i21.ProfileRepoImp>(() => _i21.ProfileRepoImp());
    gh.factory<_i22.ResetPasswordBloc>(
        () => _i22.ResetPasswordBloc(authRepoImp: gh<_i5.AuthRepoImp>()));
    gh.factory<_i23.AddNewCategoryBloc>(() => _i23.AddNewCategoryBloc(
        addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i24.AddNikNameBloc>(() => _i24.AddNikNameBloc(
        addNewCategoryRepoImp: gh<_i3.AdminFeatureRepoImp>()));
    gh.factory<_i25.AddPostBloc>(
        () => _i25.AddPostBloc(postsRepoImp: gh<_i19.PostsRepoImp>()));
    gh.factory<_i26.AddUserToLiveBloc>(() => _i26.AddUserToLiveBloc(
        getLiveStreamsRepoImp: gh<_i15.LiveStreamRepoImp>()));
    gh.factory<_i27.AuthBloc>(
        () => _i27.AuthBloc(authRepoImp: gh<_i5.AuthRepoImp>()));
    gh.factory<_i28.CategoryBloc>(
        () => _i28.CategoryBloc(categoryRepoImp: gh<_i6.CategoryRepoImp>()));
    gh.factory<_i29.ChangeStatusProfileBloc>(() => _i29.ChangeStatusProfileBloc(
        profileRepoImp: gh<_i21.ProfileRepoImp>()));
    gh.factory<_i30.CreateLiveBloc>(() =>
        _i30.CreateLiveBloc(createLiveRepoImp: gh<_i15.LiveStreamRepoImp>()));
    gh.factory<_i31.DeletePostBloc>(
        () => _i31.DeletePostBloc(getPostsRepoImp: gh<_i19.PostsRepoImp>()));
    gh.factory<_i32.EditProfileBloc>(() =>
        _i32.EditProfileBloc(editProfileRepoImp: gh<_i21.ProfileRepoImp>()));
    gh.factory<_i33.EndLiveBloc>(() =>
        _i33.EndLiveBloc(getLiveStreamsRepoImp: gh<_i15.LiveStreamRepoImp>()));
    gh.factory<_i34.GetLiveStreamsBloc>(() => _i34.GetLiveStreamsBloc(
        getLiveStreamsRepoImp: gh<_i15.LiveStreamRepoImp>()));
    gh.factory<_i35.GetNotificationsBloc>(
        () => _i35.GetNotificationsBloc(gh<_i17.NotificationsRepoImp>()));
    gh.factory<_i36.GetPostsBloc>(
        () => _i36.GetPostsBloc(getPostsRepoImp: gh<_i19.PostsRepoImp>()));
    gh.factory<_i37.GetPostsUserBloc>(
        () => _i37.GetPostsUserBloc(getPostsRepoImp: gh<_i19.PostsRepoImp>()));
    gh.factory<_i38.PaymentBloc>(
        () => _i38.PaymentBloc(paymentRepoImp: gh<_i18.PaymentRepoImp>()));
    gh.factory<_i39.ProfileBloc>(
        () => _i39.ProfileBloc(profileRepoImp: gh<_i21.ProfileRepoImp>()));
    return this;
  }
}
