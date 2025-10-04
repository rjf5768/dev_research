; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-3_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i32, i16, i64, i64, i64, i8, i16, i32, i64, i8, i16, i32, i64, i8, i64, i64, i64, i64, i64 }

@myVar = external dso_local global %struct.myctype_t, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.myctype_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* @myVar) #3, !srcloc !4
  store %struct.myctype_t* %7, %struct.myctype_t** %6, align 8
  %8 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %9 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  call void @types_test1()
  %10 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %11 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @abort() #4
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %17 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %16, i32 0, i32 1
  store i16 1, i16* %17, align 4
  call void @types_test2()
  %18 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %19 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  call void @abort() #4
  unreachable

24:                                               ; preds = %15
  %25 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %26 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %25, i32 0, i32 2
  store i64 1, i64* %26, align 8
  call void @types_test3()
  %27 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %28 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @abort() #4
  unreachable

32:                                               ; preds = %24
  %33 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %34 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %33, i32 0, i32 3
  store i64 1, i64* %34, align 8
  call void @types_test4()
  %35 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %36 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @abort() #4
  unreachable

40:                                               ; preds = %32
  %41 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %42 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %41, i32 0, i32 4
  store i64 1, i64* %42, align 8
  call void @types_test5()
  %43 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %44 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  call void @abort() #4
  unreachable

48:                                               ; preds = %40
  %49 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %50 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %49, i32 0, i32 5
  store i8 1, i8* %50, align 8
  call void @types_test6()
  %51 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %52 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %51, i32 0, i32 5
  %53 = load i8, i8* %52, align 8
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @abort() #4
  unreachable

57:                                               ; preds = %48
  %58 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %59 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %58, i32 0, i32 6
  store i16 1, i16* %59, align 2
  call void @types_test7()
  %60 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %61 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %60, i32 0, i32 6
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  call void @abort() #4
  unreachable

66:                                               ; preds = %57
  %67 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %68 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %67, i32 0, i32 7
  store i32 1, i32* %68, align 4
  call void @types_test8()
  %69 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %70 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  call void @abort() #4
  unreachable

74:                                               ; preds = %66
  %75 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %76 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %75, i32 0, i32 8
  store i64 1, i64* %76, align 8
  call void @types_test9()
  %77 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %78 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  call void @abort() #4
  unreachable

82:                                               ; preds = %74
  %83 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %84 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %83, i32 0, i32 9
  store i8 1, i8* %84, align 8
  call void @types_test10()
  %85 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %86 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %85, i32 0, i32 9
  %87 = load i8, i8* %86, align 8
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  call void @abort() #4
  unreachable

91:                                               ; preds = %82
  %92 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %93 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %92, i32 0, i32 10
  store i16 1, i16* %93, align 2
  call void @types_test11()
  %94 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %95 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %94, i32 0, i32 10
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp ne i32 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  call void @abort() #4
  unreachable

100:                                              ; preds = %91
  %101 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %102 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %101, i32 0, i32 11
  store i32 1, i32* %102, align 4
  call void @types_test12()
  %103 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %104 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  call void @abort() #4
  unreachable

108:                                              ; preds = %100
  %109 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %110 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %109, i32 0, i32 12
  store i64 1, i64* %110, align 8
  call void @types_test13()
  %111 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %112 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %111, i32 0, i32 12
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  call void @abort() #4
  unreachable

116:                                              ; preds = %108
  %117 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %118 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %117, i32 0, i32 13
  store i8 1, i8* %118, align 8
  call void @types_test14()
  %119 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %120 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %119, i32 0, i32 13
  %121 = load i8, i8* %120, align 8
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  call void @abort() #4
  unreachable

125:                                              ; preds = %116
  %126 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %127 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %126, i32 0, i32 14
  store i64 1, i64* %127, align 8
  call void @types_test15()
  %128 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %129 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %128, i32 0, i32 14
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  call void @abort() #4
  unreachable

133:                                              ; preds = %125
  %134 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %135 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %134, i32 0, i32 15
  store i64 1, i64* %135, align 8
  call void @types_test16()
  %136 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %137 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %136, i32 0, i32 15
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 2
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  call void @abort() #4
  unreachable

141:                                              ; preds = %133
  %142 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %143 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %142, i32 0, i32 16
  store i64 1, i64* %143, align 8
  call void @types_test17()
  %144 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %145 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %144, i32 0, i32 16
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  call void @abort() #4
  unreachable

149:                                              ; preds = %141
  %150 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %151 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %150, i32 0, i32 17
  store i64 1, i64* %151, align 8
  call void @types_test18()
  %152 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %153 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %152, i32 0, i32 17
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  call void @abort() #4
  unreachable

157:                                              ; preds = %149
  %158 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %159 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %158, i32 0, i32 18
  store i64 1, i64* %159, align 8
  call void @types_test19()
  %160 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %161 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %160, i32 0, i32 18
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 2
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  call void @abort() #4
  unreachable

165:                                              ; preds = %157
  ret i32 0
}

declare dso_local void @types_test1() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local void @types_test2() #1

declare dso_local void @types_test3() #1

declare dso_local void @types_test4() #1

declare dso_local void @types_test5() #1

declare dso_local void @types_test6() #1

declare dso_local void @types_test7() #1

declare dso_local void @types_test8() #1

declare dso_local void @types_test9() #1

declare dso_local void @types_test10() #1

declare dso_local void @types_test11() #1

declare dso_local void @types_test12() #1

declare dso_local void @types_test13() #1

declare dso_local void @types_test14() #1

declare dso_local void @types_test15() #1

declare dso_local void @types_test16() #1

declare dso_local void @types_test17() #1

declare dso_local void @types_test18() #1

declare dso_local void @types_test19() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1169}
