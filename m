Return-Path: <linux-ntb+bncBDAMN6NI5EERBEGK6D7QKGQEBMNVX3Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A727A2F0FCA
	for <lists+linux-ntb@lfdr.de>; Mon, 11 Jan 2021 11:14:40 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id l13sf1182726ljc.20
        for <lists+linux-ntb@lfdr.de>; Mon, 11 Jan 2021 02:14:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610360080; cv=pass;
        d=google.com; s=arc-20160816;
        b=bUgrvXix9z+1d8V29jBpooR5MCtqbo5QxjUj3RHVFS5vfhhs8YUwHpkWQiJRFV00J6
         borvIwDHUY5Iy92kmLGnca+gGTYgsv7Iv5AASifeoXPgf33CRWyyMyqi70GRkmbfLel+
         Xf5z2H7SDc7HVhA9aZrV7jzcbIX9dCVV7+LSG2Ib69qjtSTfSNzZCtGyXrKGDvDulDnN
         cxwNj0zEkWqFP+sCRLrGep4O3LqaapNCKpFsGRCRQH7YsKQR610w6P1gWXYel/uuhs4t
         vYZzKjDhZ0Wbt2QcKuBQQuyB9Bk1yInmStNwGj1JrcH2iGGjjVBRbVx2urmsRuHvNoED
         UCIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=6Zi0z/9I7sBSata6zvxRWO1O0+2LIo0PuOIlZryGgqI=;
        b=MWySfE+66CP3AS/xv8FJSQitVikVFCKQVzAfPJ5dRNAuMIuQFWiENJlUFrGM3zpzzq
         CRdupNoCy5LQcA/8n9lySUYxiHlhOs2+u5sbV7NOdC2Thqnkk+J1a3xSVNFZmYldiod+
         DC1fC67pGAJaXVhzvSByMA/PtPIW6x5NQWrrjOomJkqKyk1VWJ2C5hEaODP7Pf1b7t5o
         kp4yFjw8QcDrdXQBIGZZJ7hJDDWaV7BU3JT4SVljWn2WF+7WK5w2/Ko78QRuls8Ji3wK
         KEBSvzZif6U4HHjXetGf729rg7lsL9mns2b19yQsoDAWER7UUhaX9dYmdkZ4b7/0kugo
         iZTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UnYkeRyO;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Zi0z/9I7sBSata6zvxRWO1O0+2LIo0PuOIlZryGgqI=;
        b=On3wov/IKbzEuRVCKyRiudGpM9lZ3rKtXXlz5MFvicpC3tN53x33nG+A7ApNCg6x/M
         FG30D9uVUifEhtl6IS4CdQmK+PUq/IqhklDeVyciNS5kKxK/NAxFZsfytG73Wl9mIJqM
         XzQBvgiHtvIbzGo6Mbc6D8j4Co3nKclFU3vrRTPXQYBXp5525fcNifNS5FvGha80ZDRn
         owM1o7w/idRG9U9Nut1WnzLZ9XDtdeYRYLSIx+Me0o0rM/vKls8oHIGAcaJM/u/AO7WX
         ltduz3o7hY+cqMfWuU5ewivKhs8UXZ9FIA2WitjVXrGAbmAdyEfy5lcHBXD7J7bMj7kS
         udUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Zi0z/9I7sBSata6zvxRWO1O0+2LIo0PuOIlZryGgqI=;
        b=Y4Ilv++BKlaq7e4n02zNaTRhe2KRMbw9nPE37cSI0nhXeuMOaS9DUTvhR8u0u7sNmf
         yOh3e1vkQ2Z1eFuBpqsHlrXPjDV4nQ6bi3Op/Gl+A8yHMMO+eLomL8Zq6DYlYp26HU/o
         zRVCjtDhNNjdWFkfZFb091CKhWua3XE4hWlxrjbt24XdyPcBXWs6Zj3/gHMckiRr1nz+
         mLCDkEffrEwioEV2NO8jhV2MII/twy3GUoGItdNkfHGd7NCMhit0gUgAjokX3o5ViMVq
         hf/Q6G8jX1ofno/Q35uCh+ve7DOF4gtTYgRKToSPaNYB6qRGrUdryTjLXUIilr0xKxab
         OEvA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53175LdYE0O3V7Kw+9PCBE0dhb/psjC+YpbGqZ9oATS4BLgfNdhZ
	faj8KOFxgh5sqpap64tbkgo=
X-Google-Smtp-Source: ABdhPJw2qWUzc5NVzTzLu8tt++Wdtdhvs+1I5JcupjgXdHVMmFZNPtlZGz0oWGj1Bw2MOHrEnE+x+w==
X-Received: by 2002:a19:2d10:: with SMTP id k16mr6480104lfj.161.1610360080257;
        Mon, 11 Jan 2021 02:14:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls2833476ljg.11.gmail; Mon, 11
 Jan 2021 02:14:39 -0800 (PST)
X-Received: by 2002:a05:651c:10c:: with SMTP id a12mr6911613ljb.414.1610360079345;
        Mon, 11 Jan 2021 02:14:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610360079; cv=none;
        d=google.com; s=arc-20160816;
        b=J2f+eh8A77ndo/GjM+Mqza/USDIBUT+91CxlxpeLlYpssijy/MeftqCgJkQekZqLwN
         UK0jmef9JJw585jTuFPJe+j6oh5gHDMw7lv0MKMe49OV6eR/wWgCSEWqqTVwda5Itn/j
         6GQPX5NFSHs6JyMZYN19MVWl6LSFmRlo1MIj69Z1ORWrHDG5q5+PmUYhdMJ8j8yid83G
         wYY+wAd1JnNv5XBISe1z5XoutdxWATz00qioGxYB7ZAOA6b+mStDlsazILf2A2eFwQMu
         OR4IwdVChI6TUJN8yOqrxACdNvy76VoZAjLZe+KCLjYS53pWQWbwoKGsruT5q4Zy25b9
         CUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=vdITQROn2Urg2SWnxxpWECg8/2piMq1rysKQi+Js6AM=;
        b=mOjcDoLTOtV0TVsR6CIek2WXgB7qtyopBvPpnyY78+xTjkEhBKvc0p3OsydCjXkF6k
         57bMD1A2Efsv9lnjmirulfySlSm4E6kxiAJSfYK4EaVYocxClsm3Goi8sW/F43n0y+rq
         9ENMSFNpOD/BYRLU3TnIajSN7wIlvJ/Ljs431WvJ9N7ms9Ybp0qLYk98lQr3CMsey/lm
         I7gE2UoShoPZ1ewf3Ro6AZ3vG69kZhcHEQ9RIEyoKVptcY3qeW0gb2HLR3KNJR7vtljE
         6G/WF3zHYbc7ZKZq11dwl9HS8sAFg6vb/Y1mi67qqs5+fyJaSwLlh6TnuadcdQQN3+NX
         /x3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UnYkeRyO;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i22si786162ljj.8.2021.01.11.02.14.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 02:14:39 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Cc: LKML <linux-kernel@vger.kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Peter Zijlstra <peterz@infradead.org>, Catalin Marinas
 <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org, Chris Wilson
 <chris@chris-wilson.co.uk>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Saeed Mahameed
 <saeedm@nvidia.com>, netdev@vger.kernel.org, Will Deacon
 <will@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-s390@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Dave Jiang
 <dave.jiang@intel.com>, xen-devel@lists.xenproject.org, Leon Romanovsky
 <leon@kernel.org>, linux-rdma@vger.kernel.org, Marc Zyngier
 <maz@kernel.org>, Helge Deller <deller@gmx.de>, Russell King
 <linux@armlinux.org.uk>, Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Heiko
 Carstens <hca@linux.ibm.com>, Wambui Karuga <wambui.karugax@gmail.com>,
 Allen Hubbe <allenbh@gmail.com>, Juergen Gross <jgross@suse.com>, David
 Airlie <airlied@linux.ie>, linux-gpio@vger.kernel.org, Stefano Stabellini
 <sstabellini@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, linux-parisc@vger.kernel.org, Pankaj
 Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, Jon Mason
 <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 intel-gfx@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [patch 02/30] genirq: Move status flag checks to core
In-Reply-To: <20201227192049.GA195845@roeck-us.net>
References: <20201210192536.118432146@linutronix.de> <20201210194042.703779349@linutronix.de> <20201227192049.GA195845@roeck-us.net>
Date: Mon, 11 Jan 2021 11:14:38 +0100
Message-ID: <87im837pbl.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=UnYkeRyO;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Sun, Dec 27 2020 at 11:20, Guenter Roeck wrote:
> On Thu, Dec 10, 2020 at 08:25:38PM +0100, Thomas Gleixner wrote:
> Yes, but that means that irq_check_status_bit() may be called from modules,
> but it is not exported, resulting in build errors such as the following.
>
> arm64:allmodconfig:
>
> ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] undefined!

Duh. Yes, that lacks an export obviously.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87im837pbl.fsf%40nanos.tec.linutronix.de.
