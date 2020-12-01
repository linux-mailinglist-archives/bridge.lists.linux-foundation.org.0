Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9C92CA4F4
	for <lists.bridge@lfdr.de>; Tue,  1 Dec 2020 15:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E822203C7;
	Tue,  1 Dec 2020 14:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 425olSRSjIea; Tue,  1 Dec 2020 14:08:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0750E20385;
	Tue,  1 Dec 2020 14:08:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7B48C0052;
	Tue,  1 Dec 2020 14:07:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2A17CC0052
 for <bridge@lists.linux-foundation.org>; Tue,  1 Dec 2020 14:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 14FB788036
 for <bridge@lists.linux-foundation.org>; Tue,  1 Dec 2020 14:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUA2Qmb9K6Bf for <bridge@lists.linux-foundation.org>;
 Tue,  1 Dec 2020 14:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF05388003
 for <bridge@lists.linux-foundation.org>; Tue,  1 Dec 2020 14:07:57 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1DtHP4002730;
 Tue, 1 Dec 2020 14:07:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=pTmh0fAx41hLIvYDyOekZfZD8/4rzzXxS/TqqdPExwg=;
 b=vLWTsjjic+1p3i9uxybiHNVi42dcBKcTvA6AfpFTEr0sUNmVqp9yRxLgg7kIK5qGUN0J
 oofgNIgToJJBxsPbFd+Am4pBxk6JPpjzRqo19VpEwymshbhsnRALOcfpiO21XOp3kmxr
 lgOLJrUqyUshUH+0ojxyxXIg1LFHdnj2t2Bklh5y68LsxqqiRxoSPtOWNIoWynIJF754
 5bVkuWqCYCEFs8tq7LyeOV+zI3/vr+tI5ZKBss7pqjTfnpXNJRaPwJeD8R6AGcywA+BA
 lerBH0PS/hUi55aURtflNdJ2juhGcYo6ht8r8gtlOn38U9XkoMGDxbASv62fD9VykISM Rg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 353dyqjnq9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Dec 2020 14:07:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1Du5R6003844;
 Tue, 1 Dec 2020 14:05:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 3540ey0hqt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Dec 2020 14:05:41 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B1E1twO021849;
 Tue, 1 Dec 2020 14:05:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 3540ey0hp9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Dec 2020 14:05:40 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B1E5MSD015816;
 Tue, 1 Dec 2020 14:05:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Dec 2020 06:05:21 -0800
Date: Tue, 1 Dec 2020 17:04:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20201201140449.GG2767@kadam>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202011220816.8B6591A@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 clxscore=1011 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010090
Cc: alsa-devel@alsa-project.org, bridge@lists.linux-foundation.org,
 target-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 linux-atm-general@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, usb-storage@lists.one-eyed-alien.net,
 linux-mmc@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-watchdog@vger.kernel.org,
 selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, drbd-dev@tron.linbit.com,
 linux-hams@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 nouveau@lists.freedesktop.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, x86@kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH 000/141] Fix fall-through warnings for Clang
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sun, Nov 22, 2020 at 08:17:03AM -0800, Kees Cook wrote:
> On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> > > On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > > > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > > > This series aims to fix almost all remaining fall-through warnings in
> > > > > order to enable -Wimplicit-fallthrough for Clang.
> > > > > 
> > > > > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > > > > add multiple break/goto/return/fallthrough statements instead of just
> > > > > letting the code fall through to the next case.
> > > > > 
> > > > > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > > > > change[1] is meant to be reverted at some point. So, this patch helps
> > > > > to move in that direction.
> > > > > 
> > > > > Something important to mention is that there is currently a discrepancy
> > > > > between GCC and Clang when dealing with switch fall-through to empty case
> > > > > statements or to cases that only contain a break/continue/return
> > > > > statement[2][3][4].  
> > > > 
> > > > Are we sure we want to make this change? Was it discussed before?
> > > > 
> > > > Are there any bugs Clangs puritanical definition of fallthrough helped
> > > > find?
> > > > 
> > > > IMVHO compiler warnings are supposed to warn about issues that could
> > > > be bugs. Falling through to default: break; can hardly be a bug?!  
> > > 
> > > It's certainly a place where the intent is not always clear. I think
> > > this makes all the cases unambiguous, and doesn't impact the machine
> > > code, since the compiler will happily optimize away any behavioral
> > > redundancy.
> > 
> > If none of the 140 patches here fix a real bug, and there is no change
> > to machine code then it sounds to me like a W=2 kind of a warning.
> 
> FWIW, this series has found at least one bug so far:
> https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/

This is a fallthrough to a return and not to a break.  That should
trigger a warning.  The fallthrough to a break should not generate a
warning.

The bug we're trying to fix is "missing break statement" but if the
result of the bug is "we hit a break statement" then now we're just
talking about style.  GCC should limit itself to warning about
potentially buggy code.

regards,
dan carpenter
