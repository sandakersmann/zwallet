// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void dummy_export() {
    return _dummy_export();
  }

  late final _dummy_export_ptr =
      _lookup<ffi.NativeFunction<_c_dummy_export>>('dummy_export');
  late final _dart_dummy_export _dummy_export =
      _dummy_export_ptr.asFunction<_dart_dummy_export>();

  void dart_post_cobject(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _dart_post_cobject(
      ptr,
    );
  }

  late final _dart_post_cobject_ptr =
      _lookup<ffi.NativeFunction<_c_dart_post_cobject>>('dart_post_cobject');
  late final _dart_dart_post_cobject _dart_post_cobject =
      _dart_post_cobject_ptr.asFunction<_dart_dart_post_cobject>();

  void deallocate_str(
    ffi.Pointer<ffi.Int8> s,
  ) {
    return _deallocate_str(
      s,
    );
  }

  late final _deallocate_str_ptr =
      _lookup<ffi.NativeFunction<_c_deallocate_str>>('deallocate_str');
  late final _dart_deallocate_str _deallocate_str =
      _deallocate_str_ptr.asFunction<_dart_deallocate_str>();

  void init_wallet(
    ffi.Pointer<ffi.Int8> db_path,
  ) {
    return _init_wallet(
      db_path,
    );
  }

  late final _init_wallet_ptr =
      _lookup<ffi.NativeFunction<_c_init_wallet>>('init_wallet');
  late final _dart_init_wallet _init_wallet =
      _init_wallet_ptr.asFunction<_dart_init_wallet>();

  void migrate_db(
    ffi.Pointer<ffi.Int8> db_path,
  ) {
    return _migrate_db(
      db_path,
    );
  }

  late final _migrate_db_ptr =
      _lookup<ffi.NativeFunction<_c_migrate_db>>('migrate_db');
  late final _dart_migrate_db _migrate_db =
      _migrate_db_ptr.asFunction<_dart_migrate_db>();

  void set_active(
    int active,
  ) {
    return _set_active(
      active,
    );
  }

  late final _set_active_ptr =
      _lookup<ffi.NativeFunction<_c_set_active>>('set_active');
  late final _dart_set_active _set_active =
      _set_active_ptr.asFunction<_dart_set_active>();

  void set_active_account(
    int coin,
    int id,
  ) {
    return _set_active_account(
      coin,
      id,
    );
  }

  late final _set_active_account_ptr =
      _lookup<ffi.NativeFunction<_c_set_active_account>>('set_active_account');
  late final _dart_set_active_account _set_active_account =
      _set_active_account_ptr.asFunction<_dart_set_active_account>();

  void set_coin_lwd_url(
    int coin,
    ffi.Pointer<ffi.Int8> lwd_url,
  ) {
    return _set_coin_lwd_url(
      coin,
      lwd_url,
    );
  }

  late final _set_coin_lwd_url_ptr =
      _lookup<ffi.NativeFunction<_c_set_coin_lwd_url>>('set_coin_lwd_url');
  late final _dart_set_coin_lwd_url _set_coin_lwd_url =
      _set_coin_lwd_url_ptr.asFunction<_dart_set_coin_lwd_url>();

  ffi.Pointer<ffi.Int8> get_lwd_url(
    int coin,
  ) {
    return _get_lwd_url(
      coin,
    );
  }

  late final _get_lwd_url_ptr =
      _lookup<ffi.NativeFunction<_c_get_lwd_url>>('get_lwd_url');
  late final _dart_get_lwd_url _get_lwd_url =
      _get_lwd_url_ptr.asFunction<_dart_get_lwd_url>();

  void reset_app() {
    return _reset_app();
  }

  late final _reset_app_ptr =
      _lookup<ffi.NativeFunction<_c_reset_app>>('reset_app');
  late final _dart_reset_app _reset_app =
      _reset_app_ptr.asFunction<_dart_reset_app>();

  CResult_u32 new_account(
    int coin,
    ffi.Pointer<ffi.Int8> name,
    ffi.Pointer<ffi.Int8> data,
    int index,
  ) {
    return _new_account(
      coin,
      name,
      data,
      index,
    );
  }

  late final _new_account_ptr =
      _lookup<ffi.NativeFunction<_c_new_account>>('new_account');
  late final _dart_new_account _new_account =
      _new_account_ptr.asFunction<_dart_new_account>();

  void new_sub_account(
    ffi.Pointer<ffi.Int8> name,
    int index,
    int count,
  ) {
    return _new_sub_account(
      name,
      index,
      count,
    );
  }

  late final _new_sub_account_ptr =
      _lookup<ffi.NativeFunction<_c_new_sub_account>>('new_sub_account');
  late final _dart_new_sub_account _new_sub_account =
      _new_sub_account_ptr.asFunction<_dart_new_sub_account>();

  CResult_____c_char get_address(
    int coin,
    int id_account,
    int ua_type,
  ) {
    return _get_address(
      coin,
      id_account,
      ua_type,
    );
  }

  late final _get_address_ptr =
      _lookup<ffi.NativeFunction<_c_get_address>>('get_address');
  late final _dart_get_address _get_address =
      _get_address_ptr.asFunction<_dart_get_address>();

  void import_transparent_key(
    int coin,
    int id_account,
    ffi.Pointer<ffi.Int8> path,
  ) {
    return _import_transparent_key(
      coin,
      id_account,
      path,
    );
  }

  late final _import_transparent_key_ptr =
      _lookup<ffi.NativeFunction<_c_import_transparent_key>>(
          'import_transparent_key');
  late final _dart_import_transparent_key _import_transparent_key =
      _import_transparent_key_ptr.asFunction<_dart_import_transparent_key>();

  void import_transparent_secret_key(
    int coin,
    int id_account,
    ffi.Pointer<ffi.Int8> secret_key,
  ) {
    return _import_transparent_secret_key(
      coin,
      id_account,
      secret_key,
    );
  }

  late final _import_transparent_secret_key_ptr =
      _lookup<ffi.NativeFunction<_c_import_transparent_secret_key>>(
          'import_transparent_secret_key');
  late final _dart_import_transparent_secret_key
      _import_transparent_secret_key = _import_transparent_secret_key_ptr
          .asFunction<_dart_import_transparent_secret_key>();

  void cancel_warp() {
    return _cancel_warp();
  }

  late final _cancel_warp_ptr =
      _lookup<ffi.NativeFunction<_c_cancel_warp>>('cancel_warp');
  late final _dart_cancel_warp _cancel_warp =
      _cancel_warp_ptr.asFunction<_dart_cancel_warp>();

  CResult_u8 warp(
    int coin,
    int get_tx,
    int anchor_offset,
    int max_cost,
    int port,
  ) {
    return _warp(
      coin,
      get_tx,
      anchor_offset,
      max_cost,
      port,
    );
  }

  late final _warp_ptr = _lookup<ffi.NativeFunction<_c_warp>>('warp');
  late final _dart_warp _warp = _warp_ptr.asFunction<_dart_warp>();

  int is_valid_key(
    int coin,
    ffi.Pointer<ffi.Int8> key,
  ) {
    return _is_valid_key(
      coin,
      key,
    );
  }

  late final _is_valid_key_ptr =
      _lookup<ffi.NativeFunction<_c_is_valid_key>>('is_valid_key');
  late final _dart_is_valid_key _is_valid_key =
      _is_valid_key_ptr.asFunction<_dart_is_valid_key>();

  int valid_address(
    int coin,
    ffi.Pointer<ffi.Int8> address,
  ) {
    return _valid_address(
      coin,
      address,
    );
  }

  late final _valid_address_ptr =
      _lookup<ffi.NativeFunction<_c_valid_address>>('valid_address');
  late final _dart_valid_address _valid_address =
      _valid_address_ptr.asFunction<_dart_valid_address>();

  CResult_____c_char new_diversified_address() {
    return _new_diversified_address();
  }

  late final _new_diversified_address_ptr =
      _lookup<ffi.NativeFunction<_c_new_diversified_address>>(
          'new_diversified_address');
  late final _dart_new_diversified_address _new_diversified_address =
      _new_diversified_address_ptr.asFunction<_dart_new_diversified_address>();

  CResult_u32 get_latest_height() {
    return _get_latest_height();
  }

  late final _get_latest_height_ptr =
      _lookup<ffi.NativeFunction<_c_get_latest_height>>('get_latest_height');
  late final _dart_get_latest_height _get_latest_height =
      _get_latest_height_ptr.asFunction<_dart_get_latest_height>();

  void skip_to_last_height(
    int coin,
  ) {
    return _skip_to_last_height(
      coin,
    );
  }

  late final _skip_to_last_height_ptr =
      _lookup<ffi.NativeFunction<_c_skip_to_last_height>>(
          'skip_to_last_height');
  late final _dart_skip_to_last_height _skip_to_last_height =
      _skip_to_last_height_ptr.asFunction<_dart_skip_to_last_height>();

  CResult_u32 rewind_to(
    int height,
  ) {
    return _rewind_to(
      height,
    );
  }

  late final _rewind_to_ptr =
      _lookup<ffi.NativeFunction<_c_rewind_to>>('rewind_to');
  late final _dart_rewind_to _rewind_to =
      _rewind_to_ptr.asFunction<_dart_rewind_to>();

  void rescan_from(
    int height,
  ) {
    return _rescan_from(
      height,
    );
  }

  late final _rescan_from_ptr =
      _lookup<ffi.NativeFunction<_c_rescan_from>>('rescan_from');
  late final _dart_rescan_from _rescan_from =
      _rescan_from_ptr.asFunction<_dart_rescan_from>();

  CResult_i64 mempool_sync() {
    return _mempool_sync();
  }

  late final _mempool_sync_ptr =
      _lookup<ffi.NativeFunction<_c_mempool_sync>>('mempool_sync');
  late final _dart_mempool_sync _mempool_sync =
      _mempool_sync_ptr.asFunction<_dart_mempool_sync>();

  void mempool_reset() {
    return _mempool_reset();
  }

  late final _mempool_reset_ptr =
      _lookup<ffi.NativeFunction<_c_mempool_reset>>('mempool_reset');
  late final _dart_mempool_reset _mempool_reset =
      _mempool_reset_ptr.asFunction<_dart_mempool_reset>();

  int get_mempool_balance() {
    return _get_mempool_balance();
  }

  late final _get_mempool_balance_ptr =
      _lookup<ffi.NativeFunction<_c_get_mempool_balance>>(
          'get_mempool_balance');
  late final _dart_get_mempool_balance _get_mempool_balance =
      _get_mempool_balance_ptr.asFunction<_dart_get_mempool_balance>();

  CResult_u64 get_taddr_balance(
    int coin,
    int id_account,
  ) {
    return _get_taddr_balance(
      coin,
      id_account,
    );
  }

  late final _get_taddr_balance_ptr =
      _lookup<ffi.NativeFunction<_c_get_taddr_balance>>('get_taddr_balance');
  late final _dart_get_taddr_balance _get_taddr_balance =
      _get_taddr_balance_ptr.asFunction<_dart_get_taddr_balance>();

  CResult_____c_char shield_taddr(
    int coin,
    int account,
    int confirmations,
  ) {
    return _shield_taddr(
      coin,
      account,
      confirmations,
    );
  }

  late final _shield_taddr_ptr =
      _lookup<ffi.NativeFunction<_c_shield_taddr>>('shield_taddr');
  late final _dart_shield_taddr _shield_taddr =
      _shield_taddr_ptr.asFunction<_dart_shield_taddr>();

  void scan_transparent_accounts(
    int gap_limit,
  ) {
    return _scan_transparent_accounts(
      gap_limit,
    );
  }

  late final _scan_transparent_accounts_ptr =
      _lookup<ffi.NativeFunction<_c_scan_transparent_accounts>>(
          'scan_transparent_accounts');
  late final _dart_scan_transparent_accounts _scan_transparent_accounts =
      _scan_transparent_accounts_ptr
          .asFunction<_dart_scan_transparent_accounts>();

  CResult_____c_char prepare_multi_payment(
    int coin,
    int account,
    ffi.Pointer<ffi.Int8> recipients_json,
    int anchor_offset,
  ) {
    return _prepare_multi_payment(
      coin,
      account,
      recipients_json,
      anchor_offset,
    );
  }

  late final _prepare_multi_payment_ptr =
      _lookup<ffi.NativeFunction<_c_prepare_multi_payment>>(
          'prepare_multi_payment');
  late final _dart_prepare_multi_payment _prepare_multi_payment =
      _prepare_multi_payment_ptr.asFunction<_dart_prepare_multi_payment>();

  CResult_____c_char transaction_report(
    int coin,
    ffi.Pointer<ffi.Int8> plan,
  ) {
    return _transaction_report(
      coin,
      plan,
    );
  }

  late final _transaction_report_ptr =
      _lookup<ffi.NativeFunction<_c_transaction_report>>('transaction_report');
  late final _dart_transaction_report _transaction_report =
      _transaction_report_ptr.asFunction<_dart_transaction_report>();

  CResult_____c_char sign(
    int coin,
    int account,
    ffi.Pointer<ffi.Int8> tx,
    int port,
  ) {
    return _sign(
      coin,
      account,
      tx,
      port,
    );
  }

  late final _sign_ptr = _lookup<ffi.NativeFunction<_c_sign>>('sign');
  late final _dart_sign _sign = _sign_ptr.asFunction<_dart_sign>();

  CResult_____c_char sign_and_broadcast(
    int coin,
    int account,
    ffi.Pointer<ffi.Int8> tx_plan,
  ) {
    return _sign_and_broadcast(
      coin,
      account,
      tx_plan,
    );
  }

  late final _sign_and_broadcast_ptr =
      _lookup<ffi.NativeFunction<_c_sign_and_broadcast>>('sign_and_broadcast');
  late final _dart_sign_and_broadcast _sign_and_broadcast =
      _sign_and_broadcast_ptr.asFunction<_dart_sign_and_broadcast>();

  CResult_____c_char broadcast_tx(
    ffi.Pointer<ffi.Int8> tx_str,
  ) {
    return _broadcast_tx(
      tx_str,
    );
  }

  late final _broadcast_tx_ptr =
      _lookup<ffi.NativeFunction<_c_broadcast_tx>>('broadcast_tx');
  late final _dart_broadcast_tx _broadcast_tx =
      _broadcast_tx_ptr.asFunction<_dart_broadcast_tx>();

  CResult_u32 get_activation_date() {
    return _get_activation_date();
  }

  late final _get_activation_date_ptr =
      _lookup<ffi.NativeFunction<_c_get_activation_date>>(
          'get_activation_date');
  late final _dart_get_activation_date _get_activation_date =
      _get_activation_date_ptr.asFunction<_dart_get_activation_date>();

  CResult_u32 get_block_by_time(
    int time,
  ) {
    return _get_block_by_time(
      time,
    );
  }

  late final _get_block_by_time_ptr =
      _lookup<ffi.NativeFunction<_c_get_block_by_time>>('get_block_by_time');
  late final _dart_get_block_by_time _get_block_by_time =
      _get_block_by_time_ptr.asFunction<_dart_get_block_by_time>();

  CResult_u32 sync_historical_prices(
    int now,
    int days,
    ffi.Pointer<ffi.Int8> currency,
  ) {
    return _sync_historical_prices(
      now,
      days,
      currency,
    );
  }

  late final _sync_historical_prices_ptr =
      _lookup<ffi.NativeFunction<_c_sync_historical_prices>>(
          'sync_historical_prices');
  late final _dart_sync_historical_prices _sync_historical_prices =
      _sync_historical_prices_ptr.asFunction<_dart_sync_historical_prices>();

  void store_contact(
    int id,
    ffi.Pointer<ffi.Int8> name,
    ffi.Pointer<ffi.Int8> address,
    int dirty,
  ) {
    return _store_contact(
      id,
      name,
      address,
      dirty,
    );
  }

  late final _store_contact_ptr =
      _lookup<ffi.NativeFunction<_c_store_contact>>('store_contact');
  late final _dart_store_contact _store_contact =
      _store_contact_ptr.asFunction<_dart_store_contact>();

  CResult_____c_char commit_unsaved_contacts(
    int anchor_offset,
  ) {
    return _commit_unsaved_contacts(
      anchor_offset,
    );
  }

  late final _commit_unsaved_contacts_ptr =
      _lookup<ffi.NativeFunction<_c_commit_unsaved_contacts>>(
          'commit_unsaved_contacts');
  late final _dart_commit_unsaved_contacts _commit_unsaved_contacts =
      _commit_unsaved_contacts_ptr.asFunction<_dart_commit_unsaved_contacts>();

  void mark_message_read(
    int message,
    int read,
  ) {
    return _mark_message_read(
      message,
      read,
    );
  }

  late final _mark_message_read_ptr =
      _lookup<ffi.NativeFunction<_c_mark_message_read>>('mark_message_read');
  late final _dart_mark_message_read _mark_message_read =
      _mark_message_read_ptr.asFunction<_dart_mark_message_read>();

  void mark_all_messages_read(
    int read,
  ) {
    return _mark_all_messages_read(
      read,
    );
  }

  late final _mark_all_messages_read_ptr =
      _lookup<ffi.NativeFunction<_c_mark_all_messages_read>>(
          'mark_all_messages_read');
  late final _dart_mark_all_messages_read _mark_all_messages_read =
      _mark_all_messages_read_ptr.asFunction<_dart_mark_all_messages_read>();

  void truncate_data() {
    return _truncate_data();
  }

  late final _truncate_data_ptr =
      _lookup<ffi.NativeFunction<_c_truncate_data>>('truncate_data');
  late final _dart_truncate_data _truncate_data =
      _truncate_data_ptr.asFunction<_dart_truncate_data>();

  void truncate_sync_data() {
    return _truncate_sync_data();
  }

  late final _truncate_sync_data_ptr =
      _lookup<ffi.NativeFunction<_c_truncate_sync_data>>('truncate_sync_data');
  late final _dart_truncate_sync_data _truncate_sync_data =
      _truncate_sync_data_ptr.asFunction<_dart_truncate_sync_data>();

  void delete_account(
    int coin,
    int account,
  ) {
    return _delete_account(
      coin,
      account,
    );
  }

  late final _delete_account_ptr =
      _lookup<ffi.NativeFunction<_c_delete_account>>('delete_account');
  late final _dart_delete_account _delete_account =
      _delete_account_ptr.asFunction<_dart_delete_account>();

  CResult_____c_char make_payment_uri(
    ffi.Pointer<ffi.Int8> address,
    int amount,
    ffi.Pointer<ffi.Int8> memo,
  ) {
    return _make_payment_uri(
      address,
      amount,
      memo,
    );
  }

  late final _make_payment_uri_ptr =
      _lookup<ffi.NativeFunction<_c_make_payment_uri>>('make_payment_uri');
  late final _dart_make_payment_uri _make_payment_uri =
      _make_payment_uri_ptr.asFunction<_dart_make_payment_uri>();

  CResult_____c_char parse_payment_uri(
    ffi.Pointer<ffi.Int8> uri,
  ) {
    return _parse_payment_uri(
      uri,
    );
  }

  late final _parse_payment_uri_ptr =
      _lookup<ffi.NativeFunction<_c_parse_payment_uri>>('parse_payment_uri');
  late final _dart_parse_payment_uri _parse_payment_uri =
      _parse_payment_uri_ptr.asFunction<_dart_parse_payment_uri>();

  CResult_____c_char generate_random_enc_key() {
    return _generate_random_enc_key();
  }

  late final _generate_random_enc_key_ptr =
      _lookup<ffi.NativeFunction<_c_generate_random_enc_key>>(
          'generate_random_enc_key');
  late final _dart_generate_random_enc_key _generate_random_enc_key =
      _generate_random_enc_key_ptr.asFunction<_dart_generate_random_enc_key>();

  CResult_____c_char get_full_backup(
    ffi.Pointer<ffi.Int8> key,
  ) {
    return _get_full_backup(
      key,
    );
  }

  late final _get_full_backup_ptr =
      _lookup<ffi.NativeFunction<_c_get_full_backup>>('get_full_backup');
  late final _dart_get_full_backup _get_full_backup =
      _get_full_backup_ptr.asFunction<_dart_get_full_backup>();

  void restore_full_backup(
    ffi.Pointer<ffi.Int8> key,
    ffi.Pointer<ffi.Int8> backup,
  ) {
    return _restore_full_backup(
      key,
      backup,
    );
  }

  late final _restore_full_backup_ptr =
      _lookup<ffi.NativeFunction<_c_restore_full_backup>>(
          'restore_full_backup');
  late final _dart_restore_full_backup _restore_full_backup =
      _restore_full_backup_ptr.asFunction<_dart_restore_full_backup>();

  CResult_____c_char split_data(
    int id,
    ffi.Pointer<ffi.Int8> data,
  ) {
    return _split_data(
      id,
      data,
    );
  }

  late final _split_data_ptr =
      _lookup<ffi.NativeFunction<_c_split_data>>('split_data');
  late final _dart_split_data _split_data =
      _split_data_ptr.asFunction<_dart_split_data>();

  CResult_____c_char merge_data(
    ffi.Pointer<ffi.Int8> drop,
  ) {
    return _merge_data(
      drop,
    );
  }

  late final _merge_data_ptr =
      _lookup<ffi.NativeFunction<_c_merge_data>>('merge_data');
  late final _dart_merge_data _merge_data =
      _merge_data_ptr.asFunction<_dart_merge_data>();

  CResult_____c_char get_tx_summary(
    ffi.Pointer<ffi.Int8> tx,
  ) {
    return _get_tx_summary(
      tx,
    );
  }

  late final _get_tx_summary_ptr =
      _lookup<ffi.NativeFunction<_c_get_tx_summary>>('get_tx_summary');
  late final _dart_get_tx_summary _get_tx_summary =
      _get_tx_summary_ptr.asFunction<_dart_get_tx_summary>();

  CResult_____c_char get_best_server(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> servers,
    int count,
  ) {
    return _get_best_server(
      servers,
      count,
    );
  }

  late final _get_best_server_ptr =
      _lookup<ffi.NativeFunction<_c_get_best_server>>('get_best_server');
  late final _dart_get_best_server _get_best_server =
      _get_best_server_ptr.asFunction<_dart_get_best_server>();

  void import_from_zwl(
    int coin,
    ffi.Pointer<ffi.Int8> name,
    ffi.Pointer<ffi.Int8> data,
  ) {
    return _import_from_zwl(
      coin,
      name,
      data,
    );
  }

  late final _import_from_zwl_ptr =
      _lookup<ffi.NativeFunction<_c_import_from_zwl>>('import_from_zwl');
  late final _dart_import_from_zwl _import_from_zwl =
      _import_from_zwl_ptr.asFunction<_dart_import_from_zwl>();

  CResult_____c_char derive_zip32(
    int coin,
    int id_account,
    int account,
    int external_1,
    int has_address,
    int address,
  ) {
    return _derive_zip32(
      coin,
      id_account,
      account,
      external_1,
      has_address,
      address,
    );
  }

  late final _derive_zip32_ptr =
      _lookup<ffi.NativeFunction<_c_derive_zip32>>('derive_zip32');
  late final _dart_derive_zip32 _derive_zip32 =
      _derive_zip32_ptr.asFunction<_dart_derive_zip32>();

  void disable_wal(
    ffi.Pointer<ffi.Int8> db_path,
  ) {
    return _disable_wal(
      db_path,
    );
  }

  late final _disable_wal_ptr =
      _lookup<ffi.NativeFunction<_c_disable_wal>>('disable_wal');
  late final _dart_disable_wal _disable_wal =
      _disable_wal_ptr.asFunction<_dart_disable_wal>();

  int has_cuda() {
    return _has_cuda();
  }

  late final _has_cuda_ptr =
      _lookup<ffi.NativeFunction<_c_has_cuda>>('has_cuda');
  late final _dart_has_cuda _has_cuda =
      _has_cuda_ptr.asFunction<_dart_has_cuda>();

  int has_metal() {
    return _has_metal();
  }

  late final _has_metal_ptr =
      _lookup<ffi.NativeFunction<_c_has_metal>>('has_metal');
  late final _dart_has_metal _has_metal =
      _has_metal_ptr.asFunction<_dart_has_metal>();

  int has_gpu() {
    return _has_gpu();
  }

  late final _has_gpu_ptr = _lookup<ffi.NativeFunction<_c_has_gpu>>('has_gpu');
  late final _dart_has_gpu _has_gpu = _has_gpu_ptr.asFunction<_dart_has_gpu>();

  void use_gpu(
    int v,
  ) {
    return _use_gpu(
      v,
    );
  }

  late final _use_gpu_ptr = _lookup<ffi.NativeFunction<_c_use_gpu>>('use_gpu');
  late final _dart_use_gpu _use_gpu = _use_gpu_ptr.asFunction<_dart_use_gpu>();

  void import_sync_file(
    int coin,
    ffi.Pointer<ffi.Int8> path,
  ) {
    return _import_sync_file(
      coin,
      path,
    );
  }

  late final _import_sync_file_ptr =
      _lookup<ffi.NativeFunction<_c_import_sync_file>>('import_sync_file');
  late final _dart_import_sync_file _import_sync_file =
      _import_sync_file_ptr.asFunction<_dart_import_sync_file>();
}

class CResult_u32 extends ffi.Struct {
  @ffi.Uint32()
  external int value;

  external ffi.Pointer<ffi.Int8> error;
}

class CResult_____c_char extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> value;

  external ffi.Pointer<ffi.Int8> error;
}

class CResult_u8 extends ffi.Struct {
  @ffi.Uint8()
  external int value;

  external ffi.Pointer<ffi.Int8> error;
}

class CResult_i64 extends ffi.Struct {
  @ffi.Int64()
  external int value;

  external ffi.Pointer<ffi.Int8> error;
}

class CResult_u64 extends ffi.Struct {
  @ffi.Uint64()
  external int value;

  external ffi.Pointer<ffi.Int8> error;
}

const int QR_DATA_SIZE = 256;

const int MAX_ATTEMPTS = 10;

const int N = 200000;

typedef _c_dummy_export = ffi.Void Function();

typedef _dart_dummy_export = void Function();

typedef _c_dart_post_cobject = ffi.Void Function(
  ffi.Pointer<ffi.Void> ptr,
);

typedef _dart_dart_post_cobject = void Function(
  ffi.Pointer<ffi.Void> ptr,
);

typedef _c_deallocate_str = ffi.Void Function(
  ffi.Pointer<ffi.Int8> s,
);

typedef _dart_deallocate_str = void Function(
  ffi.Pointer<ffi.Int8> s,
);

typedef _c_init_wallet = ffi.Void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _dart_init_wallet = void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _c_migrate_db = ffi.Void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _dart_migrate_db = void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _c_set_active = ffi.Void Function(
  ffi.Uint8 active,
);

typedef _dart_set_active = void Function(
  int active,
);

typedef _c_set_active_account = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Uint32 id,
);

typedef _dart_set_active_account = void Function(
  int coin,
  int id,
);

typedef _c_set_coin_lwd_url = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> lwd_url,
);

typedef _dart_set_coin_lwd_url = void Function(
  int coin,
  ffi.Pointer<ffi.Int8> lwd_url,
);

typedef _c_get_lwd_url = ffi.Pointer<ffi.Int8> Function(
  ffi.Uint8 coin,
);

typedef _dart_get_lwd_url = ffi.Pointer<ffi.Int8> Function(
  int coin,
);

typedef _c_reset_app = ffi.Void Function();

typedef _dart_reset_app = void Function();

typedef _c_new_account = CResult_u32 Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> data,
  ffi.Int32 index,
);

typedef _dart_new_account = CResult_u32 Function(
  int coin,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> data,
  int index,
);

typedef _c_new_sub_account = ffi.Void Function(
  ffi.Pointer<ffi.Int8> name,
  ffi.Int32 index,
  ffi.Uint32 count,
);

typedef _dart_new_sub_account = void Function(
  ffi.Pointer<ffi.Int8> name,
  int index,
  int count,
);

typedef _c_get_address = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 id_account,
  ffi.Uint8 ua_type,
);

typedef _dart_get_address = CResult_____c_char Function(
  int coin,
  int id_account,
  int ua_type,
);

typedef _c_import_transparent_key = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Uint32 id_account,
  ffi.Pointer<ffi.Int8> path,
);

typedef _dart_import_transparent_key = void Function(
  int coin,
  int id_account,
  ffi.Pointer<ffi.Int8> path,
);

typedef _c_import_transparent_secret_key = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Uint32 id_account,
  ffi.Pointer<ffi.Int8> secret_key,
);

typedef _dart_import_transparent_secret_key = void Function(
  int coin,
  int id_account,
  ffi.Pointer<ffi.Int8> secret_key,
);

typedef _c_cancel_warp = ffi.Void Function();

typedef _dart_cancel_warp = void Function();

typedef _c_warp = CResult_u8 Function(
  ffi.Uint8 coin,
  ffi.Int8 get_tx,
  ffi.Uint32 anchor_offset,
  ffi.Uint32 max_cost,
  ffi.Int64 port,
);

typedef _dart_warp = CResult_u8 Function(
  int coin,
  int get_tx,
  int anchor_offset,
  int max_cost,
  int port,
);

typedef _c_is_valid_key = ffi.Int8 Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> key,
);

typedef _dart_is_valid_key = int Function(
  int coin,
  ffi.Pointer<ffi.Int8> key,
);

typedef _c_valid_address = ffi.Int8 Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> address,
);

typedef _dart_valid_address = int Function(
  int coin,
  ffi.Pointer<ffi.Int8> address,
);

typedef _c_new_diversified_address = CResult_____c_char Function();

typedef _dart_new_diversified_address = CResult_____c_char Function();

typedef _c_get_latest_height = CResult_u32 Function();

typedef _dart_get_latest_height = CResult_u32 Function();

typedef _c_skip_to_last_height = ffi.Void Function(
  ffi.Uint8 coin,
);

typedef _dart_skip_to_last_height = void Function(
  int coin,
);

typedef _c_rewind_to = CResult_u32 Function(
  ffi.Uint32 height,
);

typedef _dart_rewind_to = CResult_u32 Function(
  int height,
);

typedef _c_rescan_from = ffi.Void Function(
  ffi.Uint32 height,
);

typedef _dart_rescan_from = void Function(
  int height,
);

typedef _c_mempool_sync = CResult_i64 Function();

typedef _dart_mempool_sync = CResult_i64 Function();

typedef _c_mempool_reset = ffi.Void Function();

typedef _dart_mempool_reset = void Function();

typedef _c_get_mempool_balance = ffi.Int64 Function();

typedef _dart_get_mempool_balance = int Function();

typedef _c_get_taddr_balance = CResult_u64 Function(
  ffi.Uint8 coin,
  ffi.Uint32 id_account,
);

typedef _dart_get_taddr_balance = CResult_u64 Function(
  int coin,
  int id_account,
);

typedef _c_shield_taddr = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 account,
  ffi.Uint32 confirmations,
);

typedef _dart_shield_taddr = CResult_____c_char Function(
  int coin,
  int account,
  int confirmations,
);

typedef _c_scan_transparent_accounts = ffi.Void Function(
  ffi.Uint32 gap_limit,
);

typedef _dart_scan_transparent_accounts = void Function(
  int gap_limit,
);

typedef _c_prepare_multi_payment = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 account,
  ffi.Pointer<ffi.Int8> recipients_json,
  ffi.Uint32 anchor_offset,
);

typedef _dart_prepare_multi_payment = CResult_____c_char Function(
  int coin,
  int account,
  ffi.Pointer<ffi.Int8> recipients_json,
  int anchor_offset,
);

typedef _c_transaction_report = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> plan,
);

typedef _dart_transaction_report = CResult_____c_char Function(
  int coin,
  ffi.Pointer<ffi.Int8> plan,
);

typedef _c_sign = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 account,
  ffi.Pointer<ffi.Int8> tx,
  ffi.Int64 port,
);

typedef _dart_sign = CResult_____c_char Function(
  int coin,
  int account,
  ffi.Pointer<ffi.Int8> tx,
  int port,
);

typedef _c_sign_and_broadcast = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 account,
  ffi.Pointer<ffi.Int8> tx_plan,
);

typedef _dart_sign_and_broadcast = CResult_____c_char Function(
  int coin,
  int account,
  ffi.Pointer<ffi.Int8> tx_plan,
);

typedef _c_broadcast_tx = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> tx_str,
);

typedef _dart_broadcast_tx = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> tx_str,
);

typedef _c_get_activation_date = CResult_u32 Function();

typedef _dart_get_activation_date = CResult_u32 Function();

typedef _c_get_block_by_time = CResult_u32 Function(
  ffi.Uint32 time,
);

typedef _dart_get_block_by_time = CResult_u32 Function(
  int time,
);

typedef _c_sync_historical_prices = CResult_u32 Function(
  ffi.Int64 now,
  ffi.Uint32 days,
  ffi.Pointer<ffi.Int8> currency,
);

typedef _dart_sync_historical_prices = CResult_u32 Function(
  int now,
  int days,
  ffi.Pointer<ffi.Int8> currency,
);

typedef _c_store_contact = ffi.Void Function(
  ffi.Uint32 id,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> address,
  ffi.Int8 dirty,
);

typedef _dart_store_contact = void Function(
  int id,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> address,
  int dirty,
);

typedef _c_commit_unsaved_contacts = CResult_____c_char Function(
  ffi.Uint32 anchor_offset,
);

typedef _dart_commit_unsaved_contacts = CResult_____c_char Function(
  int anchor_offset,
);

typedef _c_mark_message_read = ffi.Void Function(
  ffi.Uint32 message,
  ffi.Int8 read,
);

typedef _dart_mark_message_read = void Function(
  int message,
  int read,
);

typedef _c_mark_all_messages_read = ffi.Void Function(
  ffi.Int8 read,
);

typedef _dart_mark_all_messages_read = void Function(
  int read,
);

typedef _c_truncate_data = ffi.Void Function();

typedef _dart_truncate_data = void Function();

typedef _c_truncate_sync_data = ffi.Void Function();

typedef _dart_truncate_sync_data = void Function();

typedef _c_delete_account = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Uint32 account,
);

typedef _dart_delete_account = void Function(
  int coin,
  int account,
);

typedef _c_make_payment_uri = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> address,
  ffi.Uint64 amount,
  ffi.Pointer<ffi.Int8> memo,
);

typedef _dart_make_payment_uri = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> address,
  int amount,
  ffi.Pointer<ffi.Int8> memo,
);

typedef _c_parse_payment_uri = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> uri,
);

typedef _dart_parse_payment_uri = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> uri,
);

typedef _c_generate_random_enc_key = CResult_____c_char Function();

typedef _dart_generate_random_enc_key = CResult_____c_char Function();

typedef _c_get_full_backup = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> key,
);

typedef _dart_get_full_backup = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> key,
);

typedef _c_restore_full_backup = ffi.Void Function(
  ffi.Pointer<ffi.Int8> key,
  ffi.Pointer<ffi.Int8> backup,
);

typedef _dart_restore_full_backup = void Function(
  ffi.Pointer<ffi.Int8> key,
  ffi.Pointer<ffi.Int8> backup,
);

typedef _c_split_data = CResult_____c_char Function(
  ffi.Uint32 id,
  ffi.Pointer<ffi.Int8> data,
);

typedef _dart_split_data = CResult_____c_char Function(
  int id,
  ffi.Pointer<ffi.Int8> data,
);

typedef _c_merge_data = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> drop,
);

typedef _dart_merge_data = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> drop,
);

typedef _c_get_tx_summary = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> tx,
);

typedef _dart_get_tx_summary = CResult_____c_char Function(
  ffi.Pointer<ffi.Int8> tx,
);

typedef _c_get_best_server = CResult_____c_char Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> servers,
  ffi.Uint32 count,
);

typedef _dart_get_best_server = CResult_____c_char Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> servers,
  int count,
);

typedef _c_import_from_zwl = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> data,
);

typedef _dart_import_from_zwl = void Function(
  int coin,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> data,
);

typedef _c_derive_zip32 = CResult_____c_char Function(
  ffi.Uint8 coin,
  ffi.Uint32 id_account,
  ffi.Uint32 account,
  ffi.Uint32 external_1,
  ffi.Int8 has_address,
  ffi.Uint32 address,
);

typedef _dart_derive_zip32 = CResult_____c_char Function(
  int coin,
  int id_account,
  int account,
  int external_1,
  int has_address,
  int address,
);

typedef _c_disable_wal = ffi.Void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _dart_disable_wal = void Function(
  ffi.Pointer<ffi.Int8> db_path,
);

typedef _c_has_cuda = ffi.Int8 Function();

typedef _dart_has_cuda = int Function();

typedef _c_has_metal = ffi.Int8 Function();

typedef _dart_has_metal = int Function();

typedef _c_has_gpu = ffi.Int8 Function();

typedef _dart_has_gpu = int Function();

typedef _c_use_gpu = ffi.Void Function(
  ffi.Int8 v,
);

typedef _dart_use_gpu = void Function(
  int v,
);

typedef _c_import_sync_file = ffi.Void Function(
  ffi.Uint8 coin,
  ffi.Pointer<ffi.Int8> path,
);

typedef _dart_import_sync_file = void Function(
  int coin,
  ffi.Pointer<ffi.Int8> path,
);
