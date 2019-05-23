Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBMF6TTTQKGQESJCRVMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E251F28CF2
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:13 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id g38sf4792931pgl.22
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650672; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELOwocwvpdzQ4v0fDB7vrJQF+FcAEoxem+Ao7xFA7jizfBuD3F1iLIQrVvPkaSISQx
         TMzFtPNDsV9o76B3Kohz1Qt/wAUPbqP9eWbf/RAySkqldjSV9+IdH0LY9l5JrLXaErqU
         PqJB50vkFyX/8OP89ofuDQkB/Go358gWkUNN13tsT8yPQTvq6ptcZBmZ1UvzJqMDH7mw
         jmSojpfBfcDkVbTIx8dXvApw5EXZqx9+U1hQLzrj/zSyFKLbDKhl7mvmkFcvNmAwDJLL
         dMUUz37IRHbdcJkIE4tT4r5c5DhtmOib7YOotmBOdjpj7s8CRdkfoVP3sE78/JnUx3mf
         WmUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=Twt2hUwgkXdNXQADQXwL8Xw9X5Jn9V18C/e7ZD4hDmo=;
        b=waP+LsPAqkIt1rJHLQ/ni+fXc7tMI0XBPdhs0hoDubj/4vWIiFXhnatdRKyssISShs
         9y2mqtG/mJIzNZB1xnV1NRzMs2o18qWoV53RAqggBnrzwlSIHmce6neRMOh+Gl71Nfsa
         UeDWfQGCjqO9EIf4n0ZLkR34bVK6ApKcmRwwaFxZ88h3KdiE5h8R1uxrsllxgFZArOiq
         S9oO4IF0byu4fT4xeWPDeN5hc/rFn8xrLWNdmbE7yyVmYOwa6gWwCwJlnqZS/6k2cbNc
         +vRddG0tes5yfrMD5Za6J8YvLelIe1TN+QOHSSBdLWEwjSs4zaSFucfzxFNVCPBUUsme
         wKMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Twt2hUwgkXdNXQADQXwL8Xw9X5Jn9V18C/e7ZD4hDmo=;
        b=CwIGUmc7+d9RgKPBueXsVQBm2oCgLIVi1tEtAG/igKoKHkpVeqglq1JpUCarfxoQrp
         LwOwFxYSra/qs4p1XNJcKOWjZ8k0yQ9GjuDLcBsbEHZgbKA0rMK79Jz69guffNhwvsZ0
         9Q2b+akH+8dAbsaoZdhlsR5Hwhr/5M7TJFkiCoJDgQx0GXmBPYVIREq62FxSXTLyk0e8
         J/W9mrFdfYGjj5OslmFegKINXwxVnCRvSiySFQ4ei7dxGgVEdzmhbmGgJohI2k7o6Kk8
         p/Sse6ypqFIdzv4n/kciVc67ySKBvtnvRLuyCBSL4BNeMkFNjfVNodYdUENNcIj7l9dV
         H7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Twt2hUwgkXdNXQADQXwL8Xw9X5Jn9V18C/e7ZD4hDmo=;
        b=HOYQbOEOH4igtfmAabSLsvnWZ2q2ECHAgaHgiTuJ5iQ0PU0U5cpTLMrkxOboBP/295
         S7h+RRUxTKYYiOICaGE0a4JgLuVs9ezeQn2Tz18zdRDqT30XcEspOWdmV/viO4FGLJzJ
         V36lxinyuJ6sNJnymjdraSNrMck1HN+Uyfvow8eA043Tx7C4jJrFJNsTLJyXAjQ5FzRs
         /v66m7eIOt0L/hV6MKBP7CV8eMfM7JCK48GbaEzS3fQgZfJX3X5CWx9g44U5kJ2c0ZaX
         WObmyde4NjyyCUw0JLVyQ/G4ePRfo9s/3Xuukr7ioXGSpMyybw2r4wtK0RrCsh83R/a4
         8plg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW1q2WCnEDDtVPeTPgLvk8fyX5iAZA7lxBnZz8XkLPulZaqf8bv
	3ZtVngbCSjYsuL3x7zZyB3w=
X-Google-Smtp-Source: APXvYqynyobTuvDCbb14sX1Nzki0ze9p9HGGuoDtY5Xdyrk0wKtW0N0YJuGym26PIU5ETXZYLjLWLw==
X-Received: by 2002:a65:44c8:: with SMTP id g8mr102040388pgs.443.1558650672631;
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:120a:: with SMTP id a10ls2140246pfj.10.gmail; Thu, 23
 May 2019 15:31:12 -0700 (PDT)
X-Received: by 2002:a63:ed16:: with SMTP id d22mr100452181pgi.35.1558650672229;
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650672; cv=none;
        d=google.com; s=arc-20160816;
        b=n8x9BSA7dkXkW0q2WEi3aLgr4pHdetJMSZnwXBWOJTKWSSPi5/9IEw7pxRFSkSWQ2l
         228F2nXsx1pg82dLbLAAMIAhvN3KSQGPy2CmY72oWI3KYrdF+/UW5Zg5oqpI0eChqYdX
         JfArxPFKEbTe2jWKXbmmV2lsRZKs9dUiz0xKi22Ze4/XBjaYUOr00I54Ww2L7w2euF1K
         Ji7fBPVOeawWYNkAq0SCEtjMQRcrHciAn5Ukg3tUzej0kNgvCLVWpyB5Nnad2crCKqO8
         5dRZpMEP37QtATLY39M+q/5TuWUNO8buoRqXqal6XOwdqiedkJsEbA/B1QUWrIdkJsOA
         sCsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=5bxH05GGe5r11lfWmDWrAkDCzJSLgYuOJx6bisJCTgQ=;
        b=xy97eDW+K5IePR6hOUzGY1+91kVNsEQPVqhJVEtwTZk2XFrGDO2ZAiy008ZCU6dgN9
         CwSTzXkLVXGywz+svjlZP/3WErqjRusIil48S7BhOKkjB4rkZMCp/eRaJ+9IzKVfEfkt
         0MypUnk2Yp0+90i6kbV7aL2tc7ADSQm/GdkHJyOhqo8m4Hfwys7oxDsgHeb1/mH6NPPo
         OjL9btElAjEy0DCwH3KOD3vHOgNc17laLTGHgFz/QIl3djxENrAxdI8gXbJHVWAJa/FL
         rc5cvsZ3CqKXcahYg2rpOD9EednCRGFf7yPWO/KQhrG2xas5FsrsF9R3U80vo2GBhooB
         GhSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id n4si90436pjb.3.2019.05.23.15.31.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062U-Et; Thu, 23 May 2019 16:31:10 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001SN-Eg; Thu, 23 May 2019 16:31:04 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Joerg Roedel <joro@8bytes.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Thu, 23 May 2019 16:30:58 -0600
Message-Id: <20190523223100.5526-9-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 08/10] NTB: Add ntb_msi_test support to ntb_test
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Content-Type: text/plain; charset="UTF-8"
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

When the ntb_msi_test module is available, the test code will trigger
each of the interrupts and ensure the corresponding occurrences files
gets incremented.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
---
 tools/testing/selftests/ntb/ntb_test.sh | 54 ++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/ntb/ntb_test.sh b/tools/testing/selftests/ntb/ntb_test.sh
index 17ca36403d04..1a10b8f67727 100755
--- a/tools/testing/selftests/ntb/ntb_test.sh
+++ b/tools/testing/selftests/ntb/ntb_test.sh
@@ -87,10 +87,10 @@ set -e
 
 function _modprobe()
 {
-	modprobe "$@"
+	modprobe "$@" || return 1
 
 	if [[ "$REMOTE_HOST" != "" ]]; then
-		ssh "$REMOTE_HOST" modprobe "$@"
+		ssh "$REMOTE_HOST" modprobe "$@" || return 1
 	fi
 }
 
@@ -451,6 +451,30 @@ function pingpong_test()
 	echo "  Passed"
 }
 
+function msi_test()
+{
+	LOC=$1
+	REM=$2
+
+	write_file 1 $LOC/ready
+
+	echo "Running MSI interrupt tests on: $(subdirname $LOC) / $(subdirname $REM)"
+
+	CNT=$(read_file "$LOC/count")
+	for ((i = 0; i < $CNT; i++)); do
+		START=$(read_file $REM/../irq${i}_occurrences)
+		write_file $i $LOC/trigger
+		END=$(read_file $REM/../irq${i}_occurrences)
+
+		if [[ $(($END - $START)) != 1 ]]; then
+			echo "MSI did not trigger the interrupt on the remote side!" >&2
+			exit 1
+		fi
+	done
+
+	echo "  Passed"
+}
+
 function perf_test()
 {
 	USE_DMA=$1
@@ -529,6 +553,29 @@ function ntb_pingpong_tests()
 	_modprobe -r ntb_pingpong
 }
 
+function ntb_msi_tests()
+{
+	LOCAL_MSI="$DEBUGFS/ntb_msi_test/$LOCAL_DEV"
+	REMOTE_MSI="$REMOTE_HOST:$DEBUGFS/ntb_msi_test/$REMOTE_DEV"
+
+	echo "Starting ntb_msi_test tests..."
+
+	if ! _modprobe ntb_msi_test 2> /dev/null; then
+		echo "  Not doing MSI tests seeing the module is not available."
+		return
+	fi
+
+	port_test $LOCAL_MSI $REMOTE_MSI
+
+	LOCAL_PEER="$LOCAL_MSI/peer$LOCAL_PIDX"
+	REMOTE_PEER="$REMOTE_MSI/peer$REMOTE_PIDX"
+
+	msi_test $LOCAL_PEER $REMOTE_PEER
+	msi_test $REMOTE_PEER $LOCAL_PEER
+
+	_modprobe -r ntb_msi_test
+}
+
 function ntb_perf_tests()
 {
 	LOCAL_PERF="$DEBUGFS/ntb_perf/$LOCAL_DEV"
@@ -550,6 +597,7 @@ function cleanup()
 	_modprobe -r ntb_perf 2> /dev/null
 	_modprobe -r ntb_pingpong 2> /dev/null
 	_modprobe -r ntb_transport 2> /dev/null
+	_modprobe -r ntb_msi_test 2> /dev/null
 	set -e
 }
 
@@ -586,5 +634,7 @@ ntb_tool_tests
 echo
 ntb_pingpong_tests
 echo
+ntb_msi_tests
+echo
 ntb_perf_tests
 echo
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-9-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
