; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i40, i40, i48 }

@a = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] undef }, align 8
@b = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, [2 x i8] undef }, align 8
@c = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] undef }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %3 = and i64 %2, 8589934591
  %4 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %5 = and i64 %4, 8589934591
  %6 = mul i64 %3, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %10 = and i64 %9, 8589934591
  %11 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %12 = and i64 %11, 1099511627775
  %13 = mul i64 %10, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %17 = and i64 %16, 1099511627775
  %18 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %19 = and i64 %18, 8589934591
  %20 = mul i64 %17, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %24 = and i64 %23, 1099511627775
  %25 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %26 = and i64 %25, 1099511627775
  %27 = mul i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %15, %8, %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %22
  %31 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %32 = and i64 %31, 8589934591
  %33 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %34 = and i64 %33, 2199023255551
  %35 = mul i64 %32, %34
  %36 = icmp ne i64 %35, 1099511627776
  br i1 %36, label %65, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %39 = and i64 %38, 1099511627775
  %40 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %41 = and i64 %40, 2199023255551
  %42 = mul i64 %39, %41
  %43 = icmp ne i64 %42, 1099511627776
  br i1 %43, label %65, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %46 = and i64 %45, 2199023255551
  %47 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %48 = and i64 %47, 8589934591
  %49 = mul i64 %46, %48
  %50 = icmp ne i64 %49, 1099511627776
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %53 = and i64 %52, 2199023255551
  %54 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %55 = and i64 %54, 1099511627775
  %56 = mul i64 %53, %55
  %57 = icmp ne i64 %56, 1099511627776
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %60 = and i64 %59, 2199023255551
  %61 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %62 = and i64 %61, 2199023255551
  %63 = mul i64 %60, %62
  %64 = icmp ne i64 %63, 1099511627776
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %51, %44, %37, %30
  call void @abort() #2
  unreachable

66:                                               ; preds = %58
  %67 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %68 = and i64 %67, 8589934591
  %69 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %70 = and i64 %69, 8589934591
  %71 = add i64 %68, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  call void @abort() #2
  unreachable

74:                                               ; preds = %66
  %75 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %76 = and i64 %75, 8589934591
  %77 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %78 = and i64 %77, 1099511627775
  %79 = add i64 %76, %78
  %80 = icmp ne i64 %79, 8589934592
  br i1 %80, label %130, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %83 = and i64 %82, 8589934591
  %84 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %85 = and i64 %84, 2199023255551
  %86 = add i64 %83, %85
  %87 = icmp ne i64 %86, 8589934592
  br i1 %87, label %130, label %88

88:                                               ; preds = %81
  %89 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %90 = and i64 %89, 1099511627775
  %91 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %92 = and i64 %91, 8589934591
  %93 = add i64 %90, %92
  %94 = icmp ne i64 %93, 8589934592
  br i1 %94, label %130, label %95

95:                                               ; preds = %88
  %96 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %97 = and i64 %96, 1099511627775
  %98 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %99 = and i64 %98, 1099511627775
  %100 = add i64 %97, %99
  %101 = icmp ne i64 %100, 8589934592
  br i1 %101, label %130, label %102

102:                                              ; preds = %95
  %103 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %104 = and i64 %103, 1099511627775
  %105 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %106 = and i64 %105, 2199023255551
  %107 = add i64 %104, %106
  %108 = icmp ne i64 %107, 8589934592
  br i1 %108, label %130, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %111 = and i64 %110, 2199023255551
  %112 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %113 = and i64 %112, 8589934591
  %114 = add i64 %111, %113
  %115 = icmp ne i64 %114, 8589934592
  br i1 %115, label %130, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %118 = and i64 %117, 2199023255551
  %119 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %120 = and i64 %119, 1099511627775
  %121 = add i64 %118, %120
  %122 = icmp ne i64 %121, 8589934592
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %125 = and i64 %124, 2199023255551
  %126 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %127 = and i64 %126, 2199023255551
  %128 = add i64 %125, %127
  %129 = icmp ne i64 %128, 8589934592
  br i1 %129, label %130, label %131

130:                                              ; preds = %123, %116, %109, %102, %95, %88, %81, %74
  call void @abort() #2
  unreachable

131:                                              ; preds = %123
  %132 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %133 = and i64 %132, 8589934591
  %134 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %135 = and i64 %134, 8589934591
  %136 = sub i64 %133, %135
  %137 = icmp ne i64 %136, 4296015872
  br i1 %137, label %194, label %138

138:                                              ; preds = %131
  %139 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %140 = and i64 %139, 8589934591
  %141 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %142 = and i64 %141, 1099511627775
  %143 = sub i64 %140, %142
  %144 = icmp ne i64 %143, 1095217709056
  br i1 %144, label %194, label %145

145:                                              ; preds = %138
  %146 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %147 = and i64 %146, 8589934591
  %148 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %149 = and i64 %148, 2199023255551
  %150 = sub i64 %147, %149
  %151 = icmp ne i64 %150, 2194729336832
  br i1 %151, label %194, label %152

152:                                              ; preds = %145
  %153 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %154 = and i64 %153, 1099511627775
  %155 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %156 = and i64 %155, 8589934591
  %157 = sub i64 %154, %156
  %158 = icmp ne i64 %157, 1095217709056
  br i1 %158, label %194, label %159

159:                                              ; preds = %152
  %160 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %161 = and i64 %160, 1099511627775
  %162 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %163 = and i64 %162, 1099511627775
  %164 = sub i64 %161, %163
  %165 = icmp ne i64 %164, 1095217709056
  br i1 %165, label %194, label %166

166:                                              ; preds = %159
  %167 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 1) to i64*), align 8
  %168 = and i64 %167, 1099511627775
  %169 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %170 = and i64 %169, 2199023255551
  %171 = sub i64 %168, %170
  %172 = icmp ne i64 %171, 2194729336832
  br i1 %172, label %194, label %173

173:                                              ; preds = %166
  %174 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %175 = and i64 %174, 2199023255551
  %176 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %177 = and i64 %176, 8589934591
  %178 = sub i64 %175, %177
  %179 = icmp ne i64 %178, 2194729336832
  br i1 %179, label %194, label %180

180:                                              ; preds = %173
  %181 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %182 = and i64 %181, 2199023255551
  %183 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 1) to i64*), align 8
  %184 = and i64 %183, 1099511627775
  %185 = sub i64 %182, %184
  %186 = icmp ne i64 %185, 2194729336832
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to %struct.s*), i32 0, i32 2) to i64*), align 8
  %189 = and i64 %188, 2199023255551
  %190 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to %struct.s*), i32 0, i32 2) to i64*), align 8
  %191 = and i64 %190, 2199023255551
  %192 = sub i64 %189, %191
  %193 = icmp ne i64 %192, 2194729336832
  br i1 %193, label %194, label %195

194:                                              ; preds = %187, %180, %173, %166, %159, %152, %145, %138, %131
  call void @abort() #2
  unreachable

195:                                              ; preds = %187
  %196 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to i64*), align 8
  %197 = and i64 %196, 8589934591
  %198 = add i64 %197, 1
  %199 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to i64*), align 8
  %200 = and i64 %198, 8589934591
  %201 = and i64 %199, -8589934592
  %202 = or i64 %201, %200
  store i64 %202, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to i64*), align 8
  %203 = icmp ne i64 %200, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %195
  %205 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 1) to i64*), align 8
  %206 = and i64 %205, 1099511627775
  %207 = add i64 %206, -1
  %208 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 1) to i64*), align 8
  %209 = and i64 %207, 1099511627775
  %210 = and i64 %208, -1099511627776
  %211 = or i64 %210, %209
  store i64 %211, i64* bitcast (i40* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 1) to i64*), align 8
  %212 = icmp ne i64 %209, 1099511627775
  br i1 %212, label %222, label %213

213:                                              ; preds = %204
  %214 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 2) to i64*), align 8
  %215 = and i64 %214, 2199023255551
  %216 = add i64 %215, -1
  %217 = load i64, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 2) to i64*), align 8
  %218 = and i64 %216, 2199023255551
  %219 = and i64 %217, -2199023255552
  %220 = or i64 %219, %218
  store i64 %220, i64* bitcast (i48* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to %struct.s*), i32 0, i32 2) to i64*), align 8
  %221 = icmp ne i64 %215, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213, %204, %195
  call void @abort() #2
  unreachable

223:                                              ; preds = %213
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
