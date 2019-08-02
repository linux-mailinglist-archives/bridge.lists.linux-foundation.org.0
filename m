Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7681880892
	for <lists.bridge@lfdr.de>; Sun,  4 Aug 2019 00:58:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6CD41CB7;
	Sat,  3 Aug 2019 22:57:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57FEC148B
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 15:35:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C8888A3
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 15:35:27 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r7so36228364pfl.3
	for <bridge@lists.linux-foundation.org>;
	Fri, 02 Aug 2019 08:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=ApEPfYLDkaftPbdGrgkwltjAOkRc+C1sr4uIvLIlPbI=;
	b=UkhvvGLmTZwuM/XOr2DMVT4r9W5ST4fy5Wc35J5kLQZCt99xKKYdPxJl5qj+0WVgmo
	wVvh03/l9DAPJ3C/g/Y78Ak+Z40x4j8vKMX2PzqkQa8LeBWIsu22QumMD+0GviObNLAn
	HAZa5GiU5ZW5FPzmGLGcRPtdP1n89RhDROE7KFnqSpX2UpqgtiWC0eiQKBeJ3BMYBFcn
	0NNcpB7KMNboscR4u8R25mMz3Cj1vhJf5eYXLhoQc2iANId6dwu8Q5xHH+3bCb7FYXKC
	qX/eKLZbDUkrlppDup7I7AZGHTEIYHHVCbrBng2rUIECZcMx/fbhe0H7EHr7073CfJ8K
	HVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=ApEPfYLDkaftPbdGrgkwltjAOkRc+C1sr4uIvLIlPbI=;
	b=nsVePKMz5Vs0EeeNF/lUSBc/CLFmtR0E6/Evz0QKQzEfhuYIRFPOGsfe/XN6aylwlh
	tkk3o1kUOdKvoXwhSZUITRBL6ZEbb5i5yZQrZYPqTq5rzNjotMpp04/k6lSij1o8HqLd
	uPVGV14i2BMpt8YtNYst2G3iUX5hf9C/i5Hz+JjGoho2dqY2P49WDQZjfDGyONSknPfg
	LhbBu12/6gT3CoW6X03es4FG0AqxzvryypQBTIV0AhQgrTGtqCV3wfeWPKelx70R1pWS
	IiVMZi9SxMF1VeZCiiYsV9cKxnPyx8LV/5oTrr/XGCK82fTZizKyLrsUZlFQ6eEPuY/N
	gm2Q==
X-Gm-Message-State: APjAAAVJ8dR1PjlQ1ikHRT1hW334D5aF8GXDCqa/oHDCpAULeYR2QbYe
	pQh/Pg/T9wzh4t1V92W6zw8=
X-Google-Smtp-Source: APXvYqyLMr94yFdu2mZ8K2EOcJa1Uh7dEJp8bg+yQqwpDn14AA1TTigDkZ4fC43I3+UyfqWw0cssYA==
X-Received: by 2002:a62:ae01:: with SMTP id q1mr58894229pff.219.1564760126671; 
	Fri, 02 Aug 2019 08:35:26 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	m101sm6818193pjb.7.2019.08.02.08.35.26
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 02 Aug 2019 08:35:26 -0700 (PDT)
Date: Fri, 2 Aug 2019 08:35:19 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190802083519.71cb4fa2@hermes.lan>
In-Reply-To: <20190802105736.26767-1-nikolay@cumulusnetworks.com>
References: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
	<20190802105736.26767-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, davem@davemloft.net,
	michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v4] net: bridge: move default pvid
 init/deinit to NETDEV_REGISTER/UNREGISTER
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

On Fri,  2 Aug 2019 13:57:36 +0300
Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

> +int br_vlan_bridge_event(struct net_device *dev, unsigned long event, void *ptr)
>  {
>  	struct netdev_notifier_changeupper_info *info;
> -	struct net_bridge *br;
> +	struct net_bridge *br = netdev_priv(dev);
> +	bool changed;
> +	int ret = 0;
>  
>  	switch (event) {
> +	case NETDEV_REGISTER:
> +		ret = br_vlan_add(br, br->default_pvid,
> +				  BRIDGE_VLAN_INFO_PVID |
> +				  BRIDGE_VLAN_INFO_UNTAGGED |
> +				  BRIDGE_VLAN_INFO_BRENTRY, &changed, NULL);
> +		break;

Looks good.

As minor optimization br_vlan_add could ignore changed pointer if NULL.
This would save places where you don't care.


Something like:
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 021cc9f66804..bacd3543b215 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -626,10 +626,11 @@ static int br_vlan_add_existing(struct net_bridge *br,
 		refcount_inc(&vlan->refcnt);
 		vlan->flags |= BRIDGE_VLAN_INFO_BRENTRY;
 		vg->num_vlans++;
-		*changed = true;
+		if (changed)
+			*changed = true;
 	}
 
-	if (__vlan_add_flags(vlan, flags))
+	if (__vlan_add_flags(vlan, flags) && changed)
 		*changed = true;
 
 	return 0;
@@ -653,7 +654,8 @@ int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags, bool *changed,
 
 	ASSERT_RTNL();
 
-	*changed = false;
+	if (changed)
+		*changed = false;
 	vg = br_vlan_group(br);
 	vlan = br_vlan_find(vg, vid);
 	if (vlan)
@@ -679,7 +681,7 @@ int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags, bool *changed,
 	if (ret) {
 		free_percpu(vlan->stats);
 		kfree(vlan);
-	} else {
+	} else if (changed) {
 		*changed = true;
 	}
 

