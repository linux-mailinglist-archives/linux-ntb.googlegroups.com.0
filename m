Return-Path: <linux-ntb+bncBCS4BDN7YUCRB3EA672AKGQEIO2PMXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE7E1B102F
	for <lists+linux-ntb@lfdr.de>; Mon, 20 Apr 2020 17:31:57 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id d15sf10781022qkg.1
        for <lists+linux-ntb@lfdr.de>; Mon, 20 Apr 2020 08:31:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587396716; cv=pass;
        d=google.com; s=arc-20160816;
        b=RDDHbIXQo7HHBf8/HMoYhfckuJ4Rrnj5EnAnqnnewCrDZD6HOxEdDwk62q/Rytcnxm
         WPyJsjTPaAR4NbQ//C5PhmAMDOaUuzLT9eDy54NZChX/JVWe0KzG0S+P180TI0rD5oTU
         MfJf2VcW0Yspf9Pfpb9I4lm5V6vE7m/eAL7H9hjGfWdwB+Xmpt7XMuJfgzDZt4oFbYBF
         mmhGMdNHNLAFABNh2pHJhVfOiIqCwX5MoHXxl6Zg/Mbys1/mhUYB7+ALGGKe7hMjQNHl
         1E0rEI4TMoQNicivgMh7E2pfaoi0cRp/YQcM4CJztL8XjaBkQTbBEUReKbJyX4dVqSWe
         NZ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature;
        bh=a+CXVfx/QNqyjvbp/osYrlQttJ0cOj8wf0Tk3wybUI4=;
        b=PuGxb9wB80bTyurK9MTvUwT/Lzqu2UcoOevlveYIsxRfsh5RA4L1kFRwH/y9pnMKtx
         Nrj6oWyGiTnpBXdKN0DyXqZ5dEHBMXH+ahSmWiCJv4ojCCSuiiPmN1YYwUzYFXqHfSrq
         bg4NYrF5XDnKuWBomlucwDg0F/StVyyqSAHOcP12DUVSLu9f9DsQBfiDfEgRGpcM4uIT
         ViZI662mZvt8Tw75R8NWyx7iTDZ1ukss98b3QlJ9flnCWO6U+eOmhJWbYI5ZXFOiG+MQ
         hXCAAX2LBllmqsmee5YiN8TB5GbAeGJik4t9+9emmIbNkNU0r55PnYF8nbsvPjfLKqh9
         zWNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=W22BRMcd;
       spf=neutral (google.com: 2607:f8b0:4864:20::834 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a+CXVfx/QNqyjvbp/osYrlQttJ0cOj8wf0Tk3wybUI4=;
        b=m8OlF0RMAH4OqbEvfu6YbFq5IN7JhlrthHKVfvNaXVo+rFAIkv4HMJaoT6J8gFUpUG
         PDBPt5edMfeks07hkYLozWX0XI17UGrlp03ll58e0XIVPnQvBk3/WYzreecsmDByDqhE
         eXGCopU9xg02giLou7i9OmQk/j39NP7LM5/5RLopJrLAucUu7JoGM9MMvEqF9dnaq2Lt
         dKRNZq15vR08d5u30+PQwhp2Urw8KidMzeYF77Mk4hHqYdxZu54H2Ihz6kmQEpMf7++b
         WGYRR43sCtOEHZpgJSoYU5Owxq8SXHYzJGiFY43P+LZOEoKWhLd89LaS8uDFfxs03857
         dP9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+CXVfx/QNqyjvbp/osYrlQttJ0cOj8wf0Tk3wybUI4=;
        b=hIh9o3t1EbZNGTcRK/0CinfnU5A4tp16N7CvmmsaD9bLXi92z5BceyMWth34uGrjPl
         QgEPJuzE3XNiRgEAqQTK7ZM6ByNhzkipimpZAKTksMlatlfII1IogGKR/M0SlWAoSN+X
         oNA5G3bqlU64lqaTci8ZvFc0CwBbssTu15spQFDAReMFT+RSPEOfBI+lniNnAYD+5Eaf
         0MUy/yXwirJ3Bq3W1Y/Ar/xbLJ/21FEHVSp4MlQwVMnjsa8JqB35Y8PHOgmB0X1FPEtC
         Y86urzGSXPj5SLCN78TulKih+Q6rnIzejHAK6HoY5mPbQtsfbf41gFYfdOy03GO/yoc1
         4/Ew==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuaKOQsPB8JKcqSmieWyttKhUBVPEorUTIzlyibet1yTrylbz8Ud
	av+me7U2O4gmcjv9pdl3z9Y=
X-Google-Smtp-Source: APiQypIBHMT6/pPKEt4njfw8lhr9rnnsHvGIgagjo5mVoU8mieMzRkgluRigmshQW8e1+w3DwKse5Q==
X-Received: by 2002:a05:620a:15e8:: with SMTP id p8mr2763358qkm.331.1587396716225;
        Mon, 20 Apr 2020 08:31:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:8a03:: with SMTP id m3ls861556qkd.8.gmail; Mon, 20 Apr
 2020 08:31:55 -0700 (PDT)
X-Received: by 2002:a37:6697:: with SMTP id a145mr16986654qkc.479.1587396715849;
        Mon, 20 Apr 2020 08:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587396715; cv=none;
        d=google.com; s=arc-20160816;
        b=DgUobQ2NJTE7nN+gB3iVp6ScGVQgnYSIvWrUuNtSN/EmojABgkt3OLpZLQyR/ss4mN
         RhfGsxjp0pSkVMNOYJco/rkk4f35aGZlpbHcJuzboI+7wT2HrNfN8vOjCwSU/Zbwvul2
         0dYpVBwesztWOPUsSaJJWu1gYcQEKW3crydUoXtpeX93LXVPUlo1YwlEpPOHp2M3m091
         LAede5ugJq+2oet3S5WgDOhkvn+2wYjCC0AsSXDC5U56HLQhLBlaLFx7y/44B9NgxH1m
         MQKSG7eSCzoR2yVLT2uSIzpl+uUy88CQLjfhTzJqE7mj5UKPODNB88qQMojqJJo4V2te
         eLFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=ISlbyy8066x+u+mwvhh86ZVdNMa9jb71UnomocjMD0A=;
        b=yp6Cs7Mo4xEpFEhH1d2FLEpI7hyt6/i/wERd8yBK38RGuug6nIskE3iD0Og+2SjN3R
         QTsfOiTYq9n7waGiLg7Ca1Y1b9q9PiEmLF/lDuLjur5hyU5bTYhmlJBa41yrEHStXi2Z
         gwqS2RmXmZCndCEjP0eVdrdZ1Nd0lNl5JrWXDKg+pMgpmC1vG9QfRRWjftBR0983zFE5
         oCSeo6nBxaM2Nnb/rQmQVXkbJ1nLis4++ne9YyH17Jz6IPdEyDYrjBXdSoney36P37AV
         KjY5GUDK0Jy5GSs6+nhK0ILvNt3z//2ghAW6cM+7Q4h8L416prP5oql0xHtRk/by245S
         z/6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=W22BRMcd;
       spf=neutral (google.com: 2607:f8b0:4864:20::834 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id z126si140786qkd.2.2020.04.20.08.31.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 08:31:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::834 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::834;
Received: by mail-qt1-x834.google.com with SMTP id i68so3075102qtb.5
        for <linux-ntb@googlegroups.com>; Mon, 20 Apr 2020 08:31:55 -0700 (PDT)
X-Received: by 2002:ac8:4c8d:: with SMTP id j13mr10150547qtv.142.1587396714876;
        Mon, 20 Apr 2020 08:31:54 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:8846:46a:2e78:2224])
        by smtp.gmail.com with ESMTPSA id v188sm779031qkh.47.2020.04.20.08.31.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 08:31:54 -0700 (PDT)
Date: Mon, 20 Apr 2020 11:31:52 -0400
From: Jon Mason <jdmason@kudzu.us>
To: linux-ntb@googlegroups.com
Subject: Smatch warnings
Message-ID: <20200420153151.GA23017@kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=W22BRMcd;       spf=neutral (google.com: 2607:f8b0:4864:20::834 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

FYI, I was using smatch when building the NTB code and saw the following
warnings.  If anyone is bored, feel free to address them.

Thanks,
Jon

---

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CHK     include/generated/compile.h
  CHK     kernel/kheaders_data.tar.xz
  CHECK   drivers/gpu/drm/i915/display/intel_frontbuffer.c
  CC [M]  drivers/gpu/drm/i915/display/intel_frontbuffer.o
  LD [M]  drivers/gpu/drm/i915/i915.o
  CHECK   drivers/net/ntb_netdev.c
  CC [M]  drivers/net/ntb_netdev.o
  LD [M]  drivers/ntb/ntb.o
  CHECK   drivers/ntb/ntb_transport.c
drivers/ntb/ntb_transport.c:1336 ntb_transport_probe() warn: should '1 << qp_count' be a 64 bit type?
  CC [M]  drivers/ntb/ntb_transport.o
  CHECK   drivers/ntb/hw/amd/ntb_hw_amd.c
  CC [M]  drivers/ntb/hw/amd/ntb_hw_amd.o
  CHECK   drivers/ntb/hw/idt/ntb_hw_idt.c
drivers/ntb/hw/idt/ntb_hw_idt.c:2514 idt_init_dbgfs() warn: passing zero to 'PTR_ERR'
drivers/ntb/hw/idt/ntb_hw_idt.c:2760 idt_pci_probe() warn: passing zero to 'PTR_ERR'
  CC [M]  drivers/ntb/hw/idt/ntb_hw_idt.o
  CHECK   drivers/ntb/hw/intel/ntb_hw_gen1.c
  CC [M]  drivers/ntb/hw/intel/ntb_hw_gen1.o
  CHECK   drivers/ntb/hw/intel/ntb_hw_gen3.c
  CC [M]  drivers/ntb/hw/intel/ntb_hw_gen3.o
  CHECK   drivers/ntb/hw/intel/ntb_hw_gen4.c
  CC [M]  drivers/ntb/hw/intel/ntb_hw_gen4.o
  LD [M]  drivers/ntb/hw/intel/ntb_hw_intel.o
  CHECK   drivers/ntb/hw/mscc/ntb_hw_switchtec.c
  CC [M]  drivers/ntb/hw/mscc/ntb_hw_switchtec.o
  CHECK   drivers/ntb/test/ntb_pingpong.c
  CC [M]  drivers/ntb/test/ntb_pingpong.o
  CHECK   drivers/ntb/test/ntb_tool.c
drivers/ntb/test/ntb_tool.c:1288 tool_inmsg_read() error: uninitialized symbol 'pidx'.
  CC [M]  drivers/ntb/test/ntb_tool.o
  CHECK   drivers/ntb/test/ntb_perf.c
  CC [M]  drivers/ntb/test/ntb_perf.o
  CHECK   drivers/ntb/test/ntb_msi_test.c
  CC [M]  drivers/ntb/test/ntb_msi_test.o
Kernel: arch/x86/boot/bzImage is ready  (#6)
  MODPOST 7760 modules
  LD [M]  drivers/gpu/drm/i915/i915.ko
  CC [M]  drivers/net/ntb_netdev.mod.o
  LD [M]  drivers/net/ntb_netdev.ko
  CC [M]  drivers/ntb/hw/amd/ntb_hw_amd.mod.o
  LD [M]  drivers/ntb/hw/amd/ntb_hw_amd.ko
  CC [M]  drivers/ntb/hw/idt/ntb_hw_idt.mod.o
  LD [M]  drivers/ntb/hw/idt/ntb_hw_idt.ko
  CC [M]  drivers/ntb/hw/intel/ntb_hw_intel.mod.o
  LD [M]  drivers/ntb/hw/intel/ntb_hw_intel.ko
  CC [M]  drivers/ntb/hw/mscc/ntb_hw_switchtec.mod.o
  LD [M]  drivers/ntb/hw/mscc/ntb_hw_switchtec.ko
  CC [M]  drivers/ntb/ntb.mod.o
  LD [M]  drivers/ntb/ntb.ko
  CC [M]  drivers/ntb/ntb_transport.mod.o
  LD [M]  drivers/ntb/ntb_transport.ko
  CC [M]  drivers/ntb/test/ntb_msi_test.mod.o
  LD [M]  drivers/ntb/test/ntb_msi_test.ko
  CC [M]  drivers/ntb/test/ntb_perf.mod.o
  LD [M]  drivers/ntb/test/ntb_perf.ko
  CC [M]  drivers/ntb/test/ntb_pingpong.mod.o
  LD [M]  drivers/ntb/test/ntb_pingpong.ko
  CC [M]  drivers/ntb/test/ntb_tool.mod.o
  LD [M]  drivers/ntb/test/ntb_tool.ko

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200420153151.GA23017%40kudzu.us.
