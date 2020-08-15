// -------------------------------------
class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props)
    this.state = { hasError: false }
  }

  componentDidCatch(error, info) {
    // 顯示於回饋用的UI上
    this.setState({ hasError: true })

    // 也可以用額外的錯誤記錄服務
    logErrorToMyService(error, info)
  }

  render() {
    if (this.state.hasError) {
      // 如果有錯誤發生，你可以呈現一個自訂的回饋UI
      return <h1>Something went wrong.</h1>
    }
    return this.props.children
  }
}

// -------------------------------------

<ErrorBoundary>
  <MyComponent />
</ErrorBoundary>

// -------------------------------------
