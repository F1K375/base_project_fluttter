enum LoadItemStatus { loading, done, fail, none, last }

extension Explanation on LoadItemStatus {
  bool get isLoading => this == LoadItemStatus.loading;
  bool get isDone => this == LoadItemStatus.done;
  bool get isFailed => this == LoadItemStatus.fail;
  bool get isLast => this == LoadItemStatus.last;
  bool get isDefault => this == LoadItemStatus.none;
}
