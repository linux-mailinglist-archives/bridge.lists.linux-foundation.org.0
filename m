Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D23924CBAB
	for <lists.bridge@lfdr.de>; Thu, 20 Jun 2019 12:21:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 32649BA9;
	Thu, 20 Jun 2019 10:20:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC8FBACD
	for <bridge@lists.linux-foundation.org>;
	Thu, 20 Jun 2019 10:20:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46EBF82F
	for <bridge@lists.linux-foundation.org>;
	Thu, 20 Jun 2019 10:20:46 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 167BFEA474
	for <bridge@lists.linux-foundation.org>;
	Thu, 20 Jun 2019 12:20:44 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 07B40DA710
	for <bridge@lists.linux-foundation.org>;
	Thu, 20 Jun 2019 12:20:44 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id ED0B3DA717; Thu, 20 Jun 2019 12:20:43 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BDA58DA705;
	Thu, 20 Jun 2019 12:20:41 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Thu, 20 Jun 2019 12:20:41 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 4A7A64265A2F;
	Thu, 20 Jun 2019 12:20:41 +0200 (CEST)
Date: Thu, 20 Jun 2019 12:20:40 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Christian Brauner <christian@brauner.io>
Message-ID: <20190620102040.g5yqqp3lnka7rn3q@salvia>
References: <20190619170547.6290-1-christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190619170547.6290-1-christian@brauner.io>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: heiko@sntech.de, narmstrong@baylibre.com, airlied@linux.ie,
	joonas.lahtinen@linux.intel.com, dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com, laurent.pinchart@ideasonboard.com,
	sam@ravnborg.org, sfr@canb.auug.org.au,
	nikolay@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	patrik.r.jakobsson@gmail.com, kadlec@netfilter.org,
	maxime.ripard@bootlin.com, coreteam@netfilter.org,
	airlied@redhat.com, harry.wentland@amd.com,
	roopa@cumulusnetworks.com, jonas@kwiboo.se, marc.zyngier@arm.com,
	syzkaller-bugs@googlegroups.com, intel-gfx@lists.freedesktop.org,
	maarten.lankhorst@linux.intel.com, jani.nikula@linux.intel.com,
	alexander.deucher@amd.com, rodrigo.vivi@intel.com,
	jerry.zhang@amd.com, sean@poorly.run, netdev@vger.kernel.org,
	fw@strlen.de, linux-kernel@vger.kernel.org, christian.koenig@amd.com,
	syzbot+43a3fa52c0d9c5c94f41@syzkaller.appspotmail.com,
	netfilter-devel@vger.kernel.org, daniel@ffwll.ch,
	enric.balletbo@collabora.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] br_netfilter: prevent UAF in
	brnf_exit_net()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Wed, Jun 19, 2019 at 07:05:47PM +0200, Christian Brauner wrote:
> Prevent a UAF in brnf_exit_net().

Applied, thanks.
