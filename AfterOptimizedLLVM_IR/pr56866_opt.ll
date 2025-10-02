; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56866.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56866.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i64], align 16
  %3 = alloca [256 x i64], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i16], align 16
  %7 = alloca [256 x i16], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %12 = bitcast i64* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 2048, i1 false)
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1024, i1 false)
  %15 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %16 = bitcast i16* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 512, i1 false)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 256, i1 false)
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  store i64 81985529216486895, i64* %18, align 16
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  store i32 19088743, i32* %19, align 16
  %20 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  store i16 17767, i16* %20, align 16
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 115, i8* %21, align 16
  %22 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %22, i32* %23, i16* %24, i8* %25) #3, !srcloc !4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %44, %0
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = lshr i64 %33, 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = shl i64 %38, 56
  %40 = or i64 %34, %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %42
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %26, !llvm.loop !5

47:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %55, 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 24
  %62 = or i32 %56, %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %48, !llvm.loop !7

69:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = ashr i32 %78, 9
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = shl i32 %84, 7
  %86 = or i32 %79, %85
  %87 = trunc i32 %86 to i16
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [256 x i16], [256 x i16]* %7, i64 0, i64 %89
  store i16 %87, i16* %90, align 2
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %70, !llvm.loop !8

94:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 256
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = ashr i32 %103, 5
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 3
  %111 = or i32 %104, %110
  %112 = trunc i32 %111 to i8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %114
  store i8 %112, i8* %115, align 1
  br label %116

116:                                              ; preds = %98
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %95, !llvm.loop !9

119:                                              ; preds = %95
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %121 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %122 = getelementptr inbounds [256 x i16], [256 x i16]* %7, i64 0, i64 0
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %120, i32* %121, i16* %122, i8* %123) #3, !srcloc !10
  %124 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %125 = load i64, i64* %124, align 16
  %126 = icmp ne i64 %125, -1224658842671273011
  br i1 %126, label %131, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %119
  call void @abort() #4
  unreachable

132:                                              ; preds = %127
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = icmp ne i32 %134, 1728127813
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %132
  call void @abort() #4
  unreachable

141:                                              ; preds = %136
  %142 = getelementptr inbounds [256 x i16], [256 x i16]* %7, i64 0, i64 0
  %143 = load i16, i16* %142, align 16
  %144 = zext i16 %143 to i32
  %145 = icmp ne i32 %144, 45986
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds [256 x i16], [256 x i16]* %7, i64 0, i64 1
  %148 = load i16, i16* %147, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146, %141
  call void @abort() #4
  unreachable

152:                                              ; preds = %146
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %154 = load i8, i8* %153, align 16
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %155, 155
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %152
  call void @abort() #4
  unreachable

163:                                              ; preds = %157
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 551}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{i64 1040}
