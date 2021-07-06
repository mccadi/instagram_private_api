enum RequestReason {
  pullToRefresh,
  warmStartFetch,
  coldStartFetch,
  /// internal only
  pagination,
}