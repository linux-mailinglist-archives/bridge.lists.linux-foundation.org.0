Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0822BB2A4
	for <lists.bridge@lfdr.de>; Fri, 20 Nov 2020 19:29:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9391F87059;
	Fri, 20 Nov 2020 18:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxGYUgd6dn4C; Fri, 20 Nov 2020 18:29:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A07787046;
	Fri, 20 Nov 2020 18:29:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06E9AC0891;
	Fri, 20 Nov 2020 18:29:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EEFBC0891;
 Fri, 20 Nov 2020 18:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 072EE86D56;
 Fri, 20 Nov 2020 18:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cd9TFVUfHrNe; Fri, 20 Nov 2020 18:29:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com
 [216.40.44.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 490C186D47;
 Fri, 20 Nov 2020 18:29:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 2DC80180A7FF1;
 Fri, 20 Nov 2020 18:29:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2731:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:3871:3874:4321:4362:5007:6742:6743:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14180:14659:14721:21060:21067:21080:21627:21990:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: woman67_620d0012734d
X-Filterd-Recvd-Size: 3843
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Fri, 20 Nov 2020 18:28:49 +0000 (UTC)
Message-ID: <3e0bbb1644fe53d79322c2feb28ccaf3e20c0e94.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-kernel@vger.kernel.org
Date: Fri, 20 Nov 2020 10:28:48 -0800
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 x86@kernel.org, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Kees Cook <keescook@chromium.org>, linux-mm@kvack.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-sctp@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
 target-devel@vger.kernel.org, linux-hardening@vger.kernel.org
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

On Fri, 2020-11-20 at 12:21 -0600, Gustavo A. R. Silva wrote:
> Hi all,
> 
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> change[1] is meant to be reverted at some point. So, this patch helps
> to move in that direction.

This was a bit hard to parse for a second or three.

Thanks Gustavo.

How was this change done?


