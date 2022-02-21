; ModuleID = '/home/sam/teach-fpga/01-fft/build/fft_32/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >" = type { %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_FFT_ir(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %data_IN, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %data_OUT) local_unnamed_addr #0 {
entry:
  %data_IN_copy = alloca [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], align 512
  %data_OUT_copy = alloca [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], align 512
  %0 = bitcast %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %data_IN to [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*
  %1 = bitcast %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %data_OUT to [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*
  call fastcc void @copy_in([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* nonnull align 512 %data_IN_copy, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %1, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* nonnull align 512 %data_OUT_copy)
  %2 = getelementptr inbounds [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %data_IN_copy, i32 0, i32 0
  %3 = getelementptr inbounds [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %data_OUT_copy, i32 0, i32 0
  call void @apatb_FFT_hw(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %2, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %3)
  call fastcc void @copy_out([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* nonnull align 512 %data_IN_copy, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %1, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* nonnull align 512 %data_OUT_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* readonly, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias align 512, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* readonly, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* align 512 %1, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a32class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* align 512 %3, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a32class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias align 512, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, null
  %3 = icmp eq [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx17 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %1, i64 0, i64 %for.loop.idx17, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, i64 0, i64 %for.loop.idx17, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr.0.0.0.07, align 2
  store i16 %5, i16* %dst.addr.0.0.0.08, align 4
  %src.addr.1.0.0.015 = getelementptr [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %1, i64 0, i64 %for.loop.idx17, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"], [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, i64 0, i64 %for.loop.idx17, i32 1, i32 0, i32 0, i32 0
  %6 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %6, i16* %dst.addr.1.0.0.016, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx17, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias readonly align 512, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %0, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a32class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %2, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* align 512 %3)
  ret void
}

declare void @apatb_FFT_hw(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*)

define void @FFT_hw_stub_wrapper(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*) #4 {
entry:
  %2 = bitcast %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %0 to [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*
  %3 = bitcast %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %1 to [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]*
  call void @copy_out([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* null, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %2, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* null, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %3)
  %4 = bitcast [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %2 to %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*
  %5 = bitcast [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %3 to %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*
  call void @FFT_hw_stub(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %4, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"* %5)
  call void @copy_in([32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* null, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %2, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* null, [32 x %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"]* %3)
  ret void
}

declare void @FFT_hw_stub(%"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*, %"class.std::complex<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0> >"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
