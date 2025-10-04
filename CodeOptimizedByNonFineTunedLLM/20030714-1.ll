; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030714-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030714-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, i1 (%struct.RenderBox*)* }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local constant i8 0, align 1
@true = dso_local constant i8 1, align 1
@g_this = dso_local global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderBox_setStyle(%struct.RenderBox* noundef %0, %struct.RenderStyle* noundef %1) #0 {
  %3 = alloca %struct.RenderBox*, align 8
  %4 = alloca %struct.RenderStyle*, align 8
  %5 = alloca %struct.RenderBox*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.RenderBox* %0, %struct.RenderBox** %3, align 8
  store %struct.RenderStyle* %1, %struct.RenderStyle** %4, align 8
  %16 = load %struct.RenderBox*, %struct.RenderBox** %3, align 8
  store %struct.RenderBox* %16, %struct.RenderBox** %5, align 8
  %17 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %18 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = lshr i16 %19, 4
  %21 = and i16 %20, 1
  %22 = trunc i16 %21 to i1
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %7, align 1
  %24 = load i8, i8* %7, align 1
  %25 = trunc i8 %24 to i1
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %6, align 1
  %27 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %28 = load %struct.RenderStyle*, %struct.RenderStyle** %4, align 8
  call void @RenderObject_setStyle(%struct.RenderBox* noundef %27, %struct.RenderStyle* noundef %28)
  %29 = load %struct.RenderStyle*, %struct.RenderStyle** %4, align 8
  %30 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.NonInheritedFlags, %struct.NonInheritedFlags* %30, i32 0, i32 0
  %32 = bitcast %union.anon* %31 to %struct.anon*
  %33 = bitcast %struct.anon* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = lshr i32 %34, 17
  %36 = and i32 %35, 3
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %50 [
    i32 2, label %38
    i32 3, label %38
  ]

38:                                               ; preds = %2, %2
  store i8 1, i8* %9, align 1
  %39 = load i8, i8* %9, align 1
  %40 = trunc i8 %39 to i1
  %41 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %42 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %41, i32 0, i32 2
  %43 = zext i1 %40 to i16
  %44 = load i16, i16* %42, align 2
  %45 = shl i16 %43, 4
  %46 = and i16 %44, -17
  %47 = or i16 %46, %45
  store i16 %47, i16* %42, align 2
  %48 = trunc i16 %43 to i8
  %49 = trunc i8 %48 to i1
  br label %131

50:                                               ; preds = %2
  %51 = load i8, i8* %6, align 1
  %52 = trunc i8 %51 to i1
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  store i8 1, i8* %12, align 1
  %54 = load i8, i8* %12, align 1
  %55 = trunc i8 %54 to i1
  %56 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %57 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %56, i32 0, i32 2
  %58 = zext i1 %55 to i16
  %59 = load i16, i16* %57, align 2
  %60 = shl i16 %58, 4
  %61 = and i16 %59, -17
  %62 = or i16 %61, %60
  store i16 %62, i16* %57, align 2
  %63 = trunc i16 %58 to i8
  %64 = trunc i8 %63 to i1
  %65 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  call void @removeFromSpecialObjects(%struct.RenderBox* noundef %65)
  br label %66

66:                                               ; preds = %53, %50
  store i8 0, i8* %13, align 1
  %67 = load i8, i8* %13, align 1
  %68 = trunc i8 %67 to i1
  %69 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %70 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %69, i32 0, i32 2
  %71 = zext i1 %68 to i16
  %72 = load i16, i16* %70, align 2
  %73 = shl i16 %71, 4
  %74 = and i16 %72, -17
  %75 = or i16 %74, %73
  store i16 %75, i16* %70, align 2
  %76 = trunc i16 %71 to i8
  %77 = trunc i8 %76 to i1
  %78 = load %struct.RenderStyle*, %struct.RenderStyle** %4, align 8
  %79 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.NonInheritedFlags, %struct.NonInheritedFlags* %79, i32 0, i32 0
  %81 = bitcast %union.anon* %80 to %struct.anon*
  %82 = bitcast %struct.anon* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = lshr i32 %83, 19
  %85 = and i32 %84, 3
  store i32 %85, i32* %10, align 4
  %86 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %87 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %86, i32 0, i32 3
  %88 = load i1 (%struct.RenderBox*)*, i1 (%struct.RenderBox*)** %87, align 8
  %89 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %90 = call zeroext i1 %88(%struct.RenderBox* noundef %89)
  br i1 %90, label %106, label %91

91:                                               ; preds = %66
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  store i8 1, i8* %14, align 1
  %95 = load i8, i8* %14, align 1
  %96 = trunc i8 %95 to i1
  %97 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %98 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %97, i32 0, i32 2
  %99 = zext i1 %96 to i16
  %100 = load i16, i16* %98, align 2
  %101 = shl i16 %99, 3
  %102 = and i16 %100, -9
  %103 = or i16 %102, %101
  store i16 %103, i16* %98, align 2
  %104 = trunc i16 %99 to i8
  %105 = trunc i8 %104 to i1
  br label %130

106:                                              ; preds = %91, %66
  %107 = load %struct.RenderStyle*, %struct.RenderStyle** %4, align 8
  %108 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.NonInheritedFlags, %struct.NonInheritedFlags* %108, i32 0, i32 0
  %110 = bitcast %union.anon* %109 to %struct.anon*
  %111 = bitcast %struct.anon* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %112, 17
  %114 = and i32 %113, 3
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %129

117:                                              ; preds = %106
  store i8 1, i8* %15, align 1
  %118 = load i8, i8* %15, align 1
  %119 = trunc i8 %118 to i1
  %120 = load %struct.RenderBox*, %struct.RenderBox** %5, align 8
  %121 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %120, i32 0, i32 2
  %122 = zext i1 %119 to i16
  %123 = load i16, i16* %121, align 2
  %124 = shl i16 %122, 6
  %125 = and i16 %123, -65
  %126 = or i16 %125, %124
  store i16 %126, i16* %121, align 2
  %127 = trunc i16 %122 to i8
  %128 = trunc i8 %127 to i1
  br label %129

129:                                              ; preds = %117, %106
  br label %130

130:                                              ; preds = %129, %94
  br label %131

131:                                              ; preds = %130, %38
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderObject_setStyle(%struct.RenderBox* noundef %0, %struct.RenderStyle* noundef %1) #0 {
  %3 = alloca %struct.RenderBox*, align 8
  %4 = alloca %struct.RenderStyle*, align 8
  store %struct.RenderBox* %0, %struct.RenderBox** %3, align 8
  store %struct.RenderStyle* %1, %struct.RenderStyle** %4, align 8
  %5 = load %struct.RenderBox*, %struct.RenderBox** %3, align 8
  %6 = load %struct.RenderStyle*, %struct.RenderStyle** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @removeFromSpecialObjects(%struct.RenderBox* noundef %0) #0 {
  %2 = alloca %struct.RenderBox*, align 8
  store %struct.RenderBox* %0, %struct.RenderBox** %2, align 8
  %3 = load %struct.RenderBox*, %struct.RenderBox** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @RenderBox_isTableCell(%struct.RenderBox* noundef %0) #0 {
  %2 = alloca %struct.RenderBox*, align 8
  store %struct.RenderBox* %0, %struct.RenderBox** %2, align 8
  %3 = load %struct.RenderBox*, %struct.RenderBox** %2, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %3 = and i16 %2, -65
  %4 = or i16 %3, 0
  store i16 %4, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %5 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %6 = and i16 %5, -17
  %7 = or i16 %6, 0
  store i16 %7, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %8 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %9 = and i16 %8, -9
  %10 = or i16 %9, 0
  store i16 %10, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  store i1 (%struct.RenderBox*)* @RenderBox_isTableCell, i1 (%struct.RenderBox*)** getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 3), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %12 = and i32 %11, -393217
  %13 = or i32 %12, 393216
  store i32 %13, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %15 = and i32 %14, -1572865
  %16 = or i32 %15, 0
  store i32 %16, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  call void @RenderBox_setStyle(%struct.RenderBox* noundef @g_this, %struct.RenderStyle* noundef @g__style)
  %17 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 1
  %20 = trunc i16 %19 to i1
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  call void @abort() #2
  unreachable

24:                                               ; preds = %0
  %25 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %26 = lshr i16 %25, 6
  %27 = and i16 %26, 1
  %28 = trunc i16 %27 to i1
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @abort() #2
  unreachable

32:                                               ; preds = %24
  %33 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i32 0, i32 2), align 2
  %34 = lshr i16 %33, 3
  %35 = and i16 %34, 1
  %36 = trunc i16 %35 to i1
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @abort() #2
  unreachable

40:                                               ; preds = %32
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
