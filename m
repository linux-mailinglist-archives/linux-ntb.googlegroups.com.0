Return-Path: <linux-ntb+bncBCV4DH5YZYMBB5WXSKGQMGQE57ZM6HA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FE446126E
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 11:31:20 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id a23-20020a62bd17000000b004a3f6892612sf10570140pff.22
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 02:31:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638181878; cv=pass;
        d=google.com; s=arc-20160816;
        b=TSkQbxQl9NtjM1t/5A7KD2uR33jYQ1Yo0UQwTATBgN6kVQGiyRf+D0rvCByh1mlpfi
         B3bPg3eYj2RjPBtCQDuHsaNzMTokD0m77ahfpC4ASx6gWFJ9QU9b48+EgTsWyK43cJOq
         Q9JpnMbHbu0kEUBnLcm1ETpxjfep4/AzfCCMgAmXPBxAO9icg65MJTnA+WJuZYyeqkVV
         WqfSyCPfaxmNe7V6rdIxMnF9iICJwmST6V0EotK96eCSrZULR+KYHtBse5VpCh6+fGk0
         9fe7TTCHBL4EcPjCpOl7YF/fKUvrFEF3Uf4jhy76y4VvQ81x9Ob5iHuRNqJRWB1IF3eJ
         xJhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=ghmu2oNRbRqHrYbex74YGxcQPghyG0e9p1Dra83vCsQ=;
        b=zChwW3b9LEgR3nKCs8hRJF059WvBWtBuvrGiiE0YqMvedye95cWPnIURqKIEmMslWJ
         tL2U0Ze+SEul905XN/FGi+bjKTHeV+sb23QdGHo4kZr4qRZVd+CuyXR5WEtiwxYnn0Fo
         3XneBRHW23T7OXtz2FRGdin7jSzkSAF7uOuPkFbbTVERrLdhOtjEwFZon0gWF5IMOxOA
         +UuTSm/+ec4nwVgZO59isqIP7uooWndDtbx8eh3AOdvD+Pd7XSyvD6JK2goNGm8k4DoQ
         MLPSRVcfR5YS+MLeS3vzn7oB8MyR3ZA/u8MnpHB3D42GoVq8cx145NlQTjOVF6egucoR
         Qf7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="Q9/xU96V";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghmu2oNRbRqHrYbex74YGxcQPghyG0e9p1Dra83vCsQ=;
        b=qyFX3sDnqcYyd+ILvZ67KB2uEtIl6beXDpe1PICHVtI0EfQsJJS1x2Fim1wreFJFmX
         bguMmtOa30MK8ZsNzaLoubW4MtwBVnuWSbYNPyLU666sewHK8nD6RD9+LpvQ+6pdEGwL
         21KB7fixbNImR6csArcqErpWxVVSIdKtTd/E8qr8dhlUYBEHqmzVGY/vYQLQJdEKCxhi
         LMBFedRnbJwiWz6HWLHhk/iLD9pgRe/SQ09xycodPFQjglE97yRrISfoM8/Ulq4lvZhC
         hFTfgmXgYHI6SiZKm3Kzflip0hvU7b++3R+3GxUrl/0Y4rKrZF6V4nY5aIH2KaCVA7vm
         J2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghmu2oNRbRqHrYbex74YGxcQPghyG0e9p1Dra83vCsQ=;
        b=PxGnAMQkdanfARFil6A1YbnS3+lQ16gJBG+t/wjpkqQ9YHFeVYtsBU+Zol2gC6F+8i
         2CoC1iJAR5anbfa1ACq4U492DrthT0iYfqKU0BC4k53aG9bL2B73PqBhpPMHJnBRbOMt
         pU3D/E8kcZut8aiKFCmiYVGZcwPeln5aMRFT7UpFbDjDrnJ2fVNiRhZcIwxAAoE5CRdJ
         XcrpsHNPCpqE/ZJujgNUAhsX32RhpZqzolJiJEXUu2RgUAK5AZFHje+MA/bEuGIo+W5j
         9Ycg/Q2H7Svy5vq/RZraDD31YiywZTKN3gtYDz1rr1UMYFe0M0F+sr4eNGt8yQ6Hxfu9
         0ekw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530tJIXf1SAVl+iZgub4Jh35hJVJB2IQPChz6jpJMpXod/XUTv0y
	f8OC+fvU3tyqHfWlNdJxUlY=
X-Google-Smtp-Source: ABdhPJxbxO7n3iGNEW2OYiOFownDVu9IA0nwL+0vhdtE6Mea/MisI4NioW9HgFFtqlh5Qrkn1mmquQ==
X-Received: by 2002:a63:a0e:: with SMTP id 14mr34307972pgk.446.1638181878414;
        Mon, 29 Nov 2021 02:31:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:80f:: with SMTP id m15ls4935432pfk.0.gmail; Mon, 29
 Nov 2021 02:31:17 -0800 (PST)
X-Received: by 2002:a63:e04f:: with SMTP id n15mr35057225pgj.31.1638181877748;
        Mon, 29 Nov 2021 02:31:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638181877; cv=none;
        d=google.com; s=arc-20160816;
        b=nrcG/RXN8/o+1tRxzosUKW+PrFSwvNpqCsPB83rc11mpi/lrLzKH67epq4riVrLcNO
         FWtcltcIjHodF4EMv8FitlPnOIZhq+LMR38BwEZbHMQWkcML1MSd4qBUrmuDekLAi0Mk
         002Rf/o5naR45N2FSeKD1iISPYcWPzjEx3fiYgRfyfQRqsDHTN8iuhg3invN4ki8m6ve
         mSDzYZRjreqSeXJSLKH6PP6j5ou0w7odwfiHl22ZN+b7QqBrLj/PHJL7uwqAc1oqJO84
         lU/p0k5f+BFEJ0rlQUxVInz+bv3g4aJJe5HkXb8ARubtmfJPTY4gBuABIj2GrFNx/vHF
         arzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=AlQwF06pb8+7lyCbb6gawpvTVyXzla4O23k9bJrSaiM=;
        b=DtzlNu7Fsw1iPuuGTVWLDt543tpCg/+w0J1xjyZLaSOrpg5a8zZjAgekbmwOWpZ4QL
         3PZnyt1u/bsL/y7UcGvpeRCJHLv+gjpSBm8AoOvTn+dQcrqLSFpY/3+xqNaGu3qiMsW1
         VQEo5VqZCiJqnTyHtwHKPvzCAjecZgbeM3BcyOmBnz7NIbBSy1FF5TQeFrdooy+cOA4R
         PcjPBQp+IIzkJQ3ne2nss6k+u7cPpt4+oMpKe0fS437xjXbY2jNFHs7FfaCUEME93LrF
         KmIKY4DSWU5NSB2XifpoqbEBbZbZo2kURVCg8WqDoqceUseYnxoXoh2h6GMGIm7aZbbz
         HpLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="Q9/xU96V";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id l5si871665pfc.2.2021.11.29.02.31.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Nov 2021 02:31:17 -0800 (PST)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AT9r9Ih001417;
	Mon, 29 Nov 2021 10:31:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3cmvmg8s4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Nov 2021 10:31:16 +0000
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 1AT9rmsa002957;
	Mon, 29 Nov 2021 10:31:16 GMT
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3cmvmg8s3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Nov 2021 10:31:16 +0000
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 1ATAESKY001089;
	Mon, 29 Nov 2021 10:31:14 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma03ams.nl.ibm.com with ESMTP id 3ckca93fp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Nov 2021 10:31:14 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1ATAVBQa63177034
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Nov 2021 10:31:11 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 21392A4071;
	Mon, 29 Nov 2021 10:31:11 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0E020A406D;
	Mon, 29 Nov 2021 10:31:10 +0000 (GMT)
Received: from sig-9-145-154-31.de.ibm.com (unknown [9.145.154.31])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 29 Nov 2021 10:31:09 +0000 (GMT)
Message-ID: <22589eefb62ac6f99f576082a65e7987a6761329.camel@linux.ibm.com>
Subject: Re: [patch 14/32] s390/pci: Rework MSI descriptor walk
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
        Alex
 Williamson <alex.williamson@redhat.com>,
        Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
        Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>,
        linux-pci@vger.kernel.org,
        Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,
        linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com
Date: Mon, 29 Nov 2021 11:31:09 +0100
In-Reply-To: <20211126232735.130164978@linutronix.de>
References: <20211126230957.239391799@linutronix.de>
	 <20211126232735.130164978@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-16.el8)
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: T4zBVQ4nSjNNrDgIvHLx_Jliwbz2dycD
X-Proofpoint-GUID: DdkLvko9I-gLFVnTeRxuc5TrlpJKM1LF
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-29_07,2021-11-28_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2111290052
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="Q9/xU96V";       spf=pass
 (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Sat, 2021-11-27 at 02:23 +0100, Thomas Gleixner wrote:
> Replace the about to vanish iterators and make use of the filtering.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-s390@vger.kernel.org
> Cc: Heiko Carstens <hca@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> ---
>  arch/s390/pci/pci_irq.c |    6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> --- a/arch/s390/pci/pci_irq.c
> +++ b/arch/s390/pci/pci_irq.c
> @@ -303,7 +303,7 @@ int arch_setup_msi_irqs(struct pci_dev *
>  
>  	/* Request MSI interrupts */
>  	hwirq = bit;
> -	for_each_pci_msi_entry(msi, pdev) {
> +	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
>  		rc = -EIO;
>  		if (hwirq - bit >= msi_vecs)
>  			break;
> @@ -362,9 +362,7 @@ void arch_teardown_msi_irqs(struct pci_d
>  		return;
>  
>  	/* Release MSI interrupts */
> -	for_each_pci_msi_entry(msi, pdev) {
> -		if (!msi->irq)
> -			continue;
> +	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_ASSOCIATED) {
>  		irq_set_msi_desc(msi->irq, NULL);
>  		irq_free_desc(msi->irq);
>  		msi->msg.address_lo = 0;
> 

Hi Thomas,

while the change looks good to me I ran into some trouble trying to
test it. I tried with the git repository you linked in the cover
letter:
git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v1-part-3

But with that I get the following linker error on s390:

s390x-11.2.0-ld: drivers/pci/msi/legacy.o: in function `pci_msi_legacy_setup_msi_irqs':
/home/nschnelle/mainline/drivers/pci/msi/legacy.c:72: undefined reference to `msi_device_populate_sysfs'
s390x-11.2.0-ld: drivers/pci/msi/legacy.o: in function `pci_msi_legacy_teardown_msi_irqs':
/home/nschnelle/mainline/drivers/pci/msi/legacy.c:78: undefined reference to `msi_device_destroy_sysfs'
make: *** [Makefile:1161: vmlinux] Error 1

This is caused by a misspelling of CONFIG_PCI_MSI_ARCH_FALLBACKS
(missing the final S) in kernel/irq/msi.c. With that fixed everything
builds and MSI IRQs work fine. So with that fixed you have my

Acked-by: Niklas Schnelle <schnelle@linux.ibm.com>
Tested-by: Niklas Schnelle <schnelle@linux.ibm.com>

Best regards,
Niklas

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/22589eefb62ac6f99f576082a65e7987a6761329.camel%40linux.ibm.com.
