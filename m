Return-Path: <linux-ntb+bncBC4LXIPCY4NRBRHL6OJAMGQE6SFDVUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 377A9504C42
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Apr 2022 07:23:17 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id h126-20020a1c2184000000b0038ff033b654sf5193044wmh.0
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Apr 2022 22:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650259397; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtN5ui1cR0Fs30zCoRnwskvwbJakuB329zk/fy7WDh1UHuIym7MBgRhTcZ6lzGwzgh
         +UCjoWUBn/YIi7ORxA7Lk/aw5uE2TazNqPx10A6DUq64CPH5rh11qCkmAGb6+oP9x5iF
         6DmmOQLR/mjypUt7xRN3Fp84HiKFeNTj8ev5h9ycuCiR129+OQWjh2zdJpHBGnN6w8kI
         bVI7toa8IlS8Q4OHmPRskOWIF14/Svr53Y/Fldhv9Pp8OYTUAGGLfOmVrDH98mqmf57N
         Whs+l8Qc0aqmioKb9+0hCIMedQgLzALyH42lN9qvee2QrY2WfbA58uEolkLVNF2KaOjh
         V/NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=L0kHYXDucFek+WILVwzYCRcWBCBzmvpRo9kKfXcjiO4=;
        b=xhoHlr3OkShYL7nupbYrcrm23M9olWDZUCC5A6oKK1xLbyg3tPcltANBmOONvfQx2r
         vgWtmh9VyFFGkgay+x26+aEiYMvtTANwn+slsU30GPQ2JzxyNzZ21k56Fo5GVcXF9t8h
         etwkMX9gr3arLnYnh6l1y+AWG1JYKKLA5MpzYpoHzoWFotkQe+KdyjzfJoVqd0SVDzih
         xk9o+Lxhd4zGhPLvK6JkbsD7LZEJlIKH8SN9T8ZJXoBv5UxnjCSxKvpEQ6ebICxcw9Sm
         m420QoLFJzU8Hq/c6RqubuTIx7alvLYjQPSYwB4rga+9JgTS9ewEry93e+urVMD7rDuC
         tB0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=IZ5UbIMm;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L0kHYXDucFek+WILVwzYCRcWBCBzmvpRo9kKfXcjiO4=;
        b=Z0F4efAQrQrSWBOMzYb4sQDjrcQdU4aRaI5bagwBrKEymN6gnlgtL0lETbPlFWLWpz
         OifZvtsMzPXh/k7/Pfx9dgaef4w+Bk1jGXQaC435padwpw+/HOOFlvN43N4vbDBG8cT3
         V3PwlsvvgzwD1rZoyuNqg4Zo1eBfGo7xAK2jFpOzkEV6m1g6lIO+AwYaudNwyFk0Z1PL
         T9OZEPgB/EAzQx+nCQxzxEldSacCD4G+5ao0ylErMfstcY1Qe75e4uI3Pb1EfBzu4XSe
         U0rF2qtKLQMPJ+hde3AoljKkqUIALRD6dqaRttIQyL4ajAbaEQHFFqbLFkoh1EGDQBxM
         0Sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0kHYXDucFek+WILVwzYCRcWBCBzmvpRo9kKfXcjiO4=;
        b=lZYc7cIrEWXaO3pWDRs4Loy+hEBOTM6jxYSBGIj5vdOz5NQYzK5XD/xIzzrD/2C3p+
         TOksdwdyoCmWUgmk7MlZ9WDntIYJ9GCQTmUh1m/NBqjqlZzsgoylhJ3yL67uTykKHTbj
         Ki6CyvvltWMfkE2b4EjkV9vRQvOokw38UDGrQzwpzlCrmJuBccQ2TfANfcut+d26Drx/
         P5/uG+vDZusKVTVjQVMjV0DA554lIEjjRitr0PSRwDK7JdC7LjEiRQGPdVQS77JFcDpq
         W4hZs5nIy1BedqjTKArt7ylBFwP6q1LYKK0dUrjZD6EUu11wHnQu3zvkxKhOr6WANIX9
         P9mA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531JxxJDjUuG+KebdiGV1buKXHJTtI8G8ixr3iDgtzcV+YFluGh/
	afwA6FVL5o0ntIgqtf+ZPTE=
X-Google-Smtp-Source: ABdhPJw3TMyiqdNFMiZ/EyoB+j126wjcjR6tNQQzMbzbPJ5BjnS8UUPnbpolvLYs0P3lQn2xIvStSQ==
X-Received: by 2002:adf:e112:0:b0:206:d12:9c3a with SMTP id t18-20020adfe112000000b002060d129c3amr6795253wrz.391.1650259396438;
        Sun, 17 Apr 2022 22:23:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:3ba1:b0:38e:b80d:4580 with SMTP id
 n33-20020a05600c3ba100b0038eb80d4580ls6478935wms.0.gmail; Sun, 17 Apr 2022
 22:23:15 -0700 (PDT)
X-Received: by 2002:a7b:c5cd:0:b0:38c:8b1b:d220 with SMTP id n13-20020a7bc5cd000000b0038c8b1bd220mr9459592wmk.118.1650259395480;
        Sun, 17 Apr 2022 22:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650259395; cv=none;
        d=google.com; s=arc-20160816;
        b=MqvUsDEI0GS3LNF6EGPGrXu9l20yTxLPb7etH1VjtMvTzYY4NkP8fiKDJtjklkLz9N
         zCRHz0lcE1WCltlfBnB6GTF5XKTs8xZr0CLHL7tOmcTtB9ackEEuerNSGfxWpJeMqU3X
         DNaB8PJqQOCaVSC+Cis2QnfELMnpDE7bXBAUUxl3FQs2sImN6wQHMrQqHyeCStZi/d24
         cYX1fIdnc/q5Zlp8Nl1tdCecvFmH1k1ZYies1f9RkP0EAXvvcdm8KRIJH5DU337aeAii
         Id+b2gIIVI2j/I1Y2nvPXlq68GyDT0ExIiDEQLnAFaYwBdPZ4HrEleOiZEVw8/1ZZUZp
         oucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=lgUa5MaGU9Zoime9eVYko2TtHJZbk2DlEGT3mGYRTLU=;
        b=pIYX9VZXRw4rFbbYD4a0I/OkwWnlA/7Geo16TZZ90jVQlzcv/XkHclZIJvvGhxsC0W
         h8REB1da7R74auQOZyJ1qpanLPcdjtN+wYUfvocWH6snaqVyQojHswMwSm5M4sdBatCt
         RRLSqSjr3rMKFLKFVzfjMHuoEDTZRFmob8qMkakgPzRAv3+3pXKa+RAzfRFXyf/sx09p
         RH0DRO17ouXh5C/zLiVVI/7wYxxa4+URZDQXkZ+CFMsMR5PfF6sdzEqHAmtfr6G0+pAJ
         0aj2NKy7Pc3sWXgvtKLjSSQGlWRJ9rWv+YC8BGVuZP9zIK1ByIJtWr2NRXWxbY1+kSEJ
         RZrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=IZ5UbIMm;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 11-20020a056000156b00b002079112400asi358796wrz.2.2022.04.17.22.23.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Apr 2022 22:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="326355223"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; 
   d="scan'208";a="326355223"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2022 22:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; 
   d="scan'208";a="625180658"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 17 Apr 2022 22:23:11 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1ngJqx-0004Mp-4s;
	Mon, 18 Apr 2022 05:23:11 +0000
Date: Mon, 18 Apr 2022 13:22:09 +0800
From: kernel test robot <lkp@intel.com>
To: Alexander Fomichev <fomichev.ru@gmail.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next 2/2] drivers/ntb/test/ntb_perf.c:1144:
 undefined reference to `__umoddi3'
Message-ID: <202204181358.WWjsittG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=IZ5UbIMm;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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

tree:   https://github.com/jonmason/ntb ntb-next
head:   10003e852471b1214f4383d79592497b3f4c7b39
commit: 10003e852471b1214f4383d79592497b3f4c7b39 [2/2] ntb_perf: extend with burst/poll/doorbell latency measurement
config: i386-randconfig-c021-20220418 (https://download.01.org/0day-ci/archive/20220418/202204181358.WWjsittG-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.2.0-19) 11.2.0
reproduce (this is a W=1 build):
        # https://github.com/jonmason/ntb/commit/10003e852471b1214f4383d79592497b3f4c7b39
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next
        git checkout 10003e852471b1214f4383d79592497b3f4c7b39
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: drivers/ntb/test/ntb_perf.o: in function `perf_run_latency':
>> drivers/ntb/test/ntb_perf.c:1144: undefined reference to `__umoddi3'


vim +1144 drivers/ntb/test/ntb_perf.c

  1113	
  1114	static int perf_run_latency(struct perf_thread *pthr)
  1115	{
  1116		struct perf_peer *peer = pthr->perf->test_peer;
  1117		struct ntb_dev *ntb = pthr->perf->ntb;
  1118		void *flt_src;
  1119		void __iomem *flt_dst, *bnd_dst;
  1120		int ret;
  1121		u64 stop_at = ktime_get_real_fast_ns() + lat_time_ms * NSEC_PER_MSEC;
  1122	
  1123		pthr->tries = 0;
  1124		pthr->latency = ktime_get();
  1125		flt_src = pthr->src;
  1126		flt_dst = peer->outbuf;
  1127		bnd_dst = peer->outbuf + peer->outbuf_size;
  1128	
  1129		while (ktime_get_real_fast_ns() < stop_at) {
  1130			ret = perf_copy_chunk(pthr, flt_dst, flt_src, 1, false);
  1131			if (ret) {
  1132				dev_err(&ntb->dev, "%d: Latency testing error %d\n",
  1133					pthr->tidx, ret);
  1134				pthr->latency = ktime_set(0, 0);
  1135				return ret;
  1136			}
  1137	
  1138			pthr->tries++;
  1139			flt_dst++;
  1140			flt_src++;
  1141	
  1142			if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
  1143				flt_dst = peer->outbuf;
> 1144				flt_src = pthr->src;
  1145			}
  1146	
  1147			/* Avoid processor soft lock-ups */
  1148			if (!(pthr->tries % RESCHEDULE_RATIO))
  1149				schedule();
  1150		}
  1151	
  1152		/* Stop timer */
  1153		pthr->latency = ktime_sub(ktime_get(), pthr->latency);
  1154	
  1155		if (pthr->tries < LAT_MIN_TRIES) {
  1156			dev_err(&ntb->dev, "%d: Too few steps to measure Latency. "
  1157					"Increase test time\n", pthr->tidx);
  1158			pthr->latency = ktime_set(0, 0);
  1159			return -EINVAL;
  1160		}
  1161	
  1162		dev_dbg(&ntb->dev, "%d: made %llu tries, lasted %llu usecs\n",
  1163			pthr->tidx, pthr->tries, ktime_to_us(pthr->latency));
  1164	
  1165		pthr->latency = ns_to_ktime(ktime_divns(pthr->latency, pthr->tries));
  1166	
  1167		dev_dbg(&ntb->dev, "%d: latency %llu us (%llu ns)\n", pthr->tidx,
  1168			ktime_to_us(pthr->latency), ktime_to_ns(pthr->latency));
  1169	
  1170		return 0;
  1171	}
  1172	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202204181358.WWjsittG-lkp%40intel.com.
