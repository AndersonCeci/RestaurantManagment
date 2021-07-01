Create Proc MealIDsAndQuantities
(
  @UserId int = 0
)

as
Begin
Select O.orderId, O.userId, OI.quantity, M.MealId, M.Name, M.Price, M.Description, M.image

From tblOrder O

Inner join tblOrderItem OI on O.orderId = OI.ItemOrderId
Inner join tblMeals M on OI.ItemMealId = M.MealId

Where O.userId = @UserId

End