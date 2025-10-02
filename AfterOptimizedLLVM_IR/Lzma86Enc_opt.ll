; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Enc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }

@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma86_Encode(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._CLzmaEncProps, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  store i32 7, i32* %19, align 4
  call void @LzmaEncProps_Init(%struct._CLzmaEncProps* noundef %20)
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %20, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %20, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i64*, i64** %10, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ult i64 %39, 14
  br i1 %40, label %41, label %42

41:                                               ; preds = %7
  store i32 7, i32* %8, align 4
  br label %172

42:                                               ; preds = %7
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %22, align 8
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %55, %42
  %45 = load i32, i32* %21, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i64, i64* %22, align 8
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %21, align 4
  %52 = add nsw i32 6, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 %49, i8* %54, align 1
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %21, align 4
  %58 = load i64, i64* %22, align 8
  %59 = lshr i64 %58, 8
  store i64 %59, i64* %22, align 8
  br label %44, !llvm.loop !4

60:                                               ; preds = %44
  store i8* null, i8** %17, align 8
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = call i8* @MyAlloc(i64 noundef %70)
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 2, i32* %8, align 4
  br label %172

75:                                               ; preds = %69
  %76 = load i8*, i8** %17, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %12, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 1 %77, i64 %78, i1 false)
  br label %79

79:                                               ; preds = %75, %66
  store i32 0, i32* %23, align 4
  %80 = load i8*, i8** %17, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i64 @x86_Convert(i8* noundef %80, i64 noundef %81, i32 noundef 0, i32* noundef %23, i32 noundef 1)
  br label %83

83:                                               ; preds = %79, %60
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 3, i32 1
  store i32 %87, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %88

88:                                               ; preds = %152, %83
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %26, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %155

92:                                               ; preds = %88
  %93 = load i64, i64* %16, align 8
  %94 = sub i64 %93, 14
  store i64 %94, i64* %28, align 8
  store i64 5, i64* %29, align 8
  %95 = load i32, i32* %26, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %26, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ false, %92 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %31, align 4
  %105 = load i32, i32* %31, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %155

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %27, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1, i32* %31, align 4
  br label %118

118:                                              ; preds = %117, %114, %111
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 14
  %121 = load i32, i32* %31, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i8*, i8** %17, align 8
  br label %127

125:                                              ; preds = %118
  %126 = load i8*, i8** %11, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i8* [ %124, %123 ], [ %126, %125 ]
  %129 = load i64, i64* %12, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i32 @LzmaEncode(i8* noundef %120, i64* noundef %28, i8* noundef %128, i64 noundef %129, %struct._CLzmaEncProps* noundef %20, i8* noundef %131, i64* noundef %29, i32 noundef 0, %struct.ICompressProgress* noundef null, %struct.ISzAlloc* noundef @g_Alloc, %struct.ISzAlloc* noundef @g_Alloc)
  store i32 %132, i32* %30, align 4
  %133 = load i32, i32* %30, align 4
  %134 = icmp ne i32 %133, 7
  br i1 %134, label %135, label %151

135:                                              ; preds = %127
  %136 = load i32, i32* %30, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %30, align 4
  store i32 %139, i32* %19, align 4
  br label %155

140:                                              ; preds = %135
  %141 = load i64, i64* %28, align 8
  %142 = load i64, i64* %24, align 8
  %143 = icmp ule i64 %141, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144, %140
  %148 = load i64, i64* %28, align 8
  store i64 %148, i64* %24, align 8
  %149 = load i32, i32* %31, align 4
  store i32 %149, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %127
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %27, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %27, align 4
  br label %88, !llvm.loop !6

155:                                              ; preds = %138, %110, %88
  %156 = load i32, i32* %25, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %160, i8* %162, align 1
  %163 = load i64, i64* %24, align 8
  %164 = add i64 14, %163
  %165 = load i64*, i64** %10, align 8
  store i64 %164, i64* %165, align 8
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i8*, i8** %17, align 8
  call void @MyFree(i8* noundef %169)
  br label %170

170:                                              ; preds = %168, %155
  %171 = load i32, i32* %19, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170, %74, %41
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local void @LzmaEncProps_Init(%struct._CLzmaEncProps* noundef) #1

declare dso_local i8* @MyAlloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @x86_Convert(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @LzmaEncode(i8* noundef, i64* noundef, i8* noundef, i64 noundef, %struct._CLzmaEncProps* noundef, i8* noundef, i64* noundef, i32 noundef, %struct.ICompressProgress* noundef, %struct.ISzAlloc* noundef, %struct.ISzAlloc* noundef) #1

declare dso_local void @MyFree(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @MyAlloc(i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @MyFree(i8* noundef %6)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
