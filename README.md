# Test_Flutter

We have resolved this observation using two state managements with GetX and Provider. Detail of each state management is as below:


 **1) GetX**

The concern is: ListItem is a Stateful widget, which rebuilds every time it's appears on the screen (Once user scroll back to same number).

How to achieve functionality: We can use any available state management solution i.e. GetX, Provider etc. and rather than adding widgets via list, use ListView for list of same widgets.

Code Review Point:
1. Do not add list of widgets in build method, rather use ListView, where you can manage onTap interaction index-wise.
2. Instead of using var counter, declare one counterArray which will define number of elements and hold their values.
i.e. RxList<int> counterArray = List.generate(100, (index) => 0).obs; and for listView's itemCount -> itemCount: context.watch<Counter>().countArr.length
3. In order to update required value/widgets only, do not use setState(). Use provider or GetX for same.
4. Follow proper naming-convention for variable and function name - Replace list with counterArray.
5. instead of using type as a name, always choose names related to your function/feature i.e. counterArray.
7. Change MaterialButton with IconButton for better UI results.
8. If you have already set background colour in your MaterialAPP(), you can remove Container and directly use Padding, set padding to enhance UX view.
9. Use Safearea to avoid intrusions by the operating system (Notch / camera)



 **2) Provider**

The concern is: ListItem is a Stateful widget, which rebuilds every time it's appears on the screen (Once user scroll back to same number).

How to achieve functionality: We can use any available state management solution i.e. GetX, Provider etc. and rather than adding widgets via list, use ListView for list of same widgets.

Code Review Point:
1. Do not add list of widgets in build method, rather use ListView, where you can manage onTap interaction index-wise.
2. Instead of using var counter, declare one counterArray which will define number of elements and hold their values.
i.e. RxList<int> counterArray = List.generate(100, (index) => 0).obs; and for listView's itemCount -> itemCount: context.watch<Counter>().countArr.length
3. In order to update required value/widgets only, do not use setState(). Use provider or GetX for same.
4. Follow proper naming-convention for variable and function name - Replace list with counterArray.
5. instead of using type as a name, always choose names related to your function/feature i.e. counterArray.
7. Change MaterialButton with IconButton for better UI results.
8. If you have already set background colour in your MaterialAPP(), you can remove Container and directly use Padding, set padding to enhance UX view.
9. Use Safearea to avoid intrusions by the operating system (Notch / camera)

------------------------------------------------------------------

**Main issue** : We have a ListItem in Stateful Widget, which reloads everytime when user scroll and values gets resetted. 

**Solution** : We have used GetX and Provider as a state management and we have used List instead of integer to manage our state, so the widget won't reload unnecessarily, it will reload only when state changes occur.

------------------------------------------------------------------

