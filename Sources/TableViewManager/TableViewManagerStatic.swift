import UIKit

open class TableViewManagerStatic: TableViewManager {

    override func tableViewManagerType() -> TableViewManagerType {
        return .staticDimension
    }

    open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let controller = findControllerAtIndexPath(indexPath: indexPath) else { return 44 }
        return controller.tableView(tableView, heightForRowAt: indexPath)
    }

}
