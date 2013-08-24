App.controller 'ScreencastsCtrl', ['$scope', 'Screencast', ($scope, Screencast) ->
  # Attributes accessible on the view
  $scope.selectedScreencast = null
  $scope.selectedRow = null

  # Action - Gather the screencasts and set the selected one to the first on success return of query (auto-play/load first one)
  $scope.screencasts = Screencast.query ->
    $scope.selectedScreencast = $scope.screencasts[0]
    $scope.selectedRow = 0

  # Actions - Set the selected screencast to the one which was clicked
  $scope.showScreencast = (screencast, row) ->
    $scope.selectedScreencast = screencast
    $scope.selectedRow = row
  ]
