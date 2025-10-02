; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/initbb.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/initbb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@bbleft = dso_local global i32 0, align 4
@bbbottom = dso_local global i32 0, align 4
@bbtop = dso_local global i32 0, align 4
@bbright = dso_local global i32 0, align 4
@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@bbbl = dso_local global i32 0, align 4
@bbbr = dso_local global i32 0, align 4
@bbbb = dso_local global i32 0, align 4
@bbbt = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @initbb() #0 {
  %1 = alloca %struct.cellbox*, align 8
  %2 = alloca %struct.tilebox*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 1000000, i32* @bbleft, align 4
  store i32 1000000, i32* @bbbottom, align 4
  store i32 0, i32* @bbtop, align 4
  store i32 0, i32* @bbright, align 4
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %78, %0
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @numcells, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %17
  %19 = load %struct.cellbox*, %struct.cellbox** %18, align 8
  store %struct.cellbox* %19, %struct.cellbox** %1, align 8
  %20 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 21
  %28 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %27, i64 0, i64 %31
  %33 = load %struct.tilebox*, %struct.tilebox** %32, align 8
  store %struct.tilebox* %33, %struct.tilebox** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @bbleft, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %14
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* @bbleft, align 4
  br label %59

59:                                               ; preds = %57, %14
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @bbright, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* @bbright, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @bbbottom, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* @bbbottom, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @bbtop, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* @bbtop, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %10, !llvm.loop !4

81:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @deltaBB(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cellbox*, align 8
  %8 = alloca %struct.tilebox*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %17, i64 %19
  %21 = load %struct.cellbox*, %struct.cellbox** %20, align 8
  store %struct.cellbox* %21, %struct.cellbox** %7, align 8
  %22 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 21
  %30 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %29, i64 0, i64 %33
  %35 = load %struct.tilebox*, %struct.tilebox** %34, align 8
  store %struct.tilebox* %35, %struct.tilebox** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @bbleft, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %3
  store i32 1000000, i32* @bbbl, align 4
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @numcells, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %97

69:                                               ; preds = %64
  %70 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %70, i64 %72
  %74 = load %struct.cellbox*, %struct.cellbox** %73, align 8
  store %struct.cellbox* %74, %struct.cellbox** %7, align 8
  %75 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i32 0, i32 21
  %80 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %81 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %79, i64 0, i64 %83
  %85 = load %struct.tilebox*, %struct.tilebox** %84, align 8
  store %struct.tilebox* %85, %struct.tilebox** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @bbbl, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %69
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* @bbbl, align 4
  br label %96

96:                                               ; preds = %94, %69
  br label %97

97:                                               ; preds = %96, %68
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %60, !llvm.loop !6

100:                                              ; preds = %60
  %101 = load i32, i32* @bbbl, align 4
  %102 = load i32, i32* @bbleft, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %108

106:                                              ; preds = %3
  %107 = load i32, i32* @bbleft, align 4
  store i32 %107, i32* @bbbl, align 4
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @bbright, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %159

112:                                              ; preds = %108
  store i32 0, i32* @bbbr, align 4
  store i32 1, i32* %15, align 4
  br label %113

113:                                              ; preds = %150, %112
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @numcells, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %150

122:                                              ; preds = %117
  %123 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %123, i64 %125
  %127 = load %struct.cellbox*, %struct.cellbox** %126, align 8
  store %struct.cellbox* %127, %struct.cellbox** %7, align 8
  %128 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %129 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %132 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %131, i32 0, i32 21
  %133 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %134 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %132, i64 0, i64 %136
  %138 = load %struct.tilebox*, %struct.tilebox** %137, align 8
  store %struct.tilebox* %138, %struct.tilebox** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @bbbr, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %122
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* @bbbr, align 4
  br label %149

149:                                              ; preds = %147, %122
  br label %150

150:                                              ; preds = %149, %121
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %113, !llvm.loop !7

153:                                              ; preds = %113
  %154 = load i32, i32* @bbright, align 4
  %155 = load i32, i32* @bbbr, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %16, align 4
  br label %161

159:                                              ; preds = %108
  %160 = load i32, i32* @bbright, align 4
  store i32 %160, i32* @bbbr, align 4
  br label %161

161:                                              ; preds = %159, %153
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @bbbottom, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %212

165:                                              ; preds = %161
  store i32 1000000, i32* @bbbb, align 4
  store i32 1, i32* %15, align 4
  br label %166

166:                                              ; preds = %203, %165
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @numcells, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %206

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %203

175:                                              ; preds = %170
  %176 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %176, i64 %178
  %180 = load %struct.cellbox*, %struct.cellbox** %179, align 8
  store %struct.cellbox* %180, %struct.cellbox** %7, align 8
  %181 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %182 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %10, align 4
  %184 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %185 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %184, i32 0, i32 21
  %186 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %185, i64 0, i64 %189
  %191 = load %struct.tilebox*, %struct.tilebox** %190, align 8
  store %struct.tilebox* %191, %struct.tilebox** %8, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %194 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %192, %195
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @bbbb, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %175
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* @bbbb, align 4
  br label %202

202:                                              ; preds = %200, %175
  br label %203

203:                                              ; preds = %202, %174
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %15, align 4
  br label %166, !llvm.loop !8

206:                                              ; preds = %166
  %207 = load i32, i32* @bbbb, align 4
  %208 = load i32, i32* @bbbottom, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* %16, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %16, align 4
  br label %214

212:                                              ; preds = %161
  %213 = load i32, i32* @bbbottom, align 4
  store i32 %213, i32* @bbbb, align 4
  br label %214

214:                                              ; preds = %212, %206
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* @bbtop, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %265

218:                                              ; preds = %214
  store i32 0, i32* @bbbt, align 4
  store i32 1, i32* %15, align 4
  br label %219

219:                                              ; preds = %256, %218
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @numcells, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %223, label %259

223:                                              ; preds = %219
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %256

228:                                              ; preds = %223
  %229 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %229, i64 %231
  %233 = load %struct.cellbox*, %struct.cellbox** %232, align 8
  store %struct.cellbox* %233, %struct.cellbox** %7, align 8
  %234 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  store i32 %236, i32* %10, align 4
  %237 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %238 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %237, i32 0, i32 21
  %239 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %240 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %238, i64 0, i64 %242
  %244 = load %struct.tilebox*, %struct.tilebox** %243, align 8
  store %struct.tilebox* %244, %struct.tilebox** %8, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %247 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %246, i32 0, i32 12
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %245, %248
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* @bbbt, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %228
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* @bbbt, align 4
  br label %255

255:                                              ; preds = %253, %228
  br label %256

256:                                              ; preds = %255, %227
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %219, !llvm.loop !9

259:                                              ; preds = %219
  %260 = load i32, i32* @bbtop, align 4
  %261 = load i32, i32* @bbbt, align 4
  %262 = sub nsw i32 %260, %261
  %263 = load i32, i32* %16, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %16, align 4
  br label %267

265:                                              ; preds = %214
  %266 = load i32, i32* @bbtop, align 4
  store i32 %266, i32* @bbbt, align 4
  br label %267

267:                                              ; preds = %265, %259
  %268 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %268, i64 %270
  %272 = load %struct.cellbox*, %struct.cellbox** %271, align 8
  store %struct.cellbox* %272, %struct.cellbox** %7, align 8
  %273 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %274 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %273, i32 0, i32 21
  %275 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %276 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %274, i64 0, i64 %278
  %280 = load %struct.tilebox*, %struct.tilebox** %279, align 8
  store %struct.tilebox* %280, %struct.tilebox** %8, align 8
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %283 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %281, %284
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %5, align 4
  %287 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %287, i32 0, i32 10
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %286, %289
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %293 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %291, %294
  store i32 %295, i32* %13, align 4
  %296 = load i32, i32* %6, align 4
  %297 = load %struct.tilebox*, %struct.tilebox** %8, align 8
  %298 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %296, %299
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* @bbbl, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %267
  %305 = load i32, i32* %11, align 4
  store i32 %305, i32* @bbbl, align 4
  %306 = load i32, i32* @bbbl, align 4
  %307 = load i32, i32* %11, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %16, align 4
  br label %311

311:                                              ; preds = %304, %267
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* @bbbr, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = load i32, i32* %12, align 4
  store i32 %316, i32* @bbbr, align 4
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* @bbbr, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* %16, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %16, align 4
  br label %322

322:                                              ; preds = %315, %311
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* @bbbb, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load i32, i32* %13, align 4
  store i32 %327, i32* @bbbb, align 4
  %328 = load i32, i32* @bbbb, align 4
  %329 = load i32, i32* %13, align 4
  %330 = sub nsw i32 %328, %329
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* %16, align 4
  br label %333

333:                                              ; preds = %326, %322
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* @bbbt, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %333
  %338 = load i32, i32* %14, align 4
  store i32 %338, i32* @bbbt, align 4
  %339 = load i32, i32* %14, align 4
  %340 = load i32, i32* @bbbt, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %16, align 4
  br label %344

344:                                              ; preds = %337, %333
  %345 = load i32, i32* %16, align 4
  ret i32 %345
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
