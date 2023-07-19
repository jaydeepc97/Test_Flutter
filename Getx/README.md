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
