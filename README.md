[![Tests](https://github.com/eonist/CommonCell/actions/workflows/Tests.yml/badge.svg)](https://github.com/eonist/CommonCell/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/eb6ece22-82e0-4631-8d3b-68e921a9341f)](https://codebeat.co/projects/github-com-eonist-commoncell-master)

# CommonCell

> Commonly used table cells

# Description
CommonCell is a library that provides commonly used table cells for iOS and macOS applications. It includes a variety of cell types, such as text cells, image cells, and more.

### Installation:
You can install CommonCell using Swift Package Manager. Simply add the following line to your `Package.swift` file: 
`.package(url: "https://github.com/eonist/CommonCell.git", .branch("master"))`

### Examples:
For iOS see: [https://github.com/eonist/SimpleTable](https://github.com/eonist/SimpleTable)

### Usage
To use CommonCell in your project, simply import the module and use the provided cell types. For example, to use a TextCell in a table view, you can do the following:
```swift
import CommonCell

class MyTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextCell.reuseIdentifier, for: indexPath) as! TextCell
        cell.configure(with: TextCellData(description: "Title", content: "Some content"))
        return cell
    }
}
```

### Contributing
Contributions to CommonCell are welcome! If you find a bug or have a feature request, please open an issue. If you would like to contribute code, please fork the repository and submit a pull request.

### License
CommonCell is available under the MIT license. See the LICENSE file for more information.

### Todo:
- Add screenshot to readme
- Add gif to readme
- Add unit test and gh actions


