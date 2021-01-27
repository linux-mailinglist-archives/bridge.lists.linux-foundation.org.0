Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C34305092
	for <lists.bridge@lfdr.de>; Wed, 27 Jan 2021 05:15:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1857D8609F;
	Wed, 27 Jan 2021 04:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJufCZfd5UYO; Wed, 27 Jan 2021 04:15:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD19F86663;
	Wed, 27 Jan 2021 04:15:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8A5BCC013A;
	Wed, 27 Jan 2021 04:15:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18D92C013A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 04:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F24EA85044
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 04:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVzA9ooRo2D3 for <bridge@lists.linux-foundation.org>;
 Wed, 27 Jan 2021 04:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B63084FA4
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 04:15:35 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id 31so315280plb.10
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 20:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QYiDQ/GkVeugLJvhcCfQckoHPeFbIgca/K6Imf4T2Po=;
 b=g62gD4vzWIF3VJ6sQ63vSGCprMOkLtpsQr+09uEI2uxILNQAN+iKr4H2cB3njLv1pm
 8PY10A9S4awrbe8wzxhFyGyIcQIQyFqRDP54icTqouq7Sia3U/AfkAeWo80AugFyplQk
 YmN9oOSPR2Hrv1Elw0IwO5zQXtzppsKvQCwnNKWPPEASgdnSqjdTsFHzRaJqwpAIpX99
 yZIf+5D90X+7G4y0r1HMfsQ1ksmd6YzT+o67ZRskSuo6dfAvt7Jq3D4XyQDKRKtMCelg
 7FKDO6dPIQp/GpzvJmBNlkFiU5Q8ISZmKihEr4LvankepFU2UAqb1RWCTHuU8BvsGq4H
 eL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QYiDQ/GkVeugLJvhcCfQckoHPeFbIgca/K6Imf4T2Po=;
 b=Dbcac4cMu/nDr3WnQYXnpJZTZpY5gTQoazN8TCwrEwRHl3dwh0ArdJU3i0k36cQlW6
 TjtcKgv3ktjigk/5+qMTNQhsfxVM11ubtijVDljEwGn54adaWwTbt4PZuA1wC4+3hemc
 4avZxByswFrzvLMWxsT5ktJU87C8QZBwZ85NdHz3e8p2tDoyjF/XE4uacjrushUXxjB+
 OoMYtsqX6ZYpUecM12Pto1MEek+kbFOYXTldocHc1P1kdDqwKJKxQvDdtl0I24QMyVLD
 DVSdwYU+u4fWaX+O5wHYf395Ef1ECmjiXkVDDI/9XEuCIZyogjfq6DePLlzlTTta5aa3
 tp1g==
X-Gm-Message-State: AOAM530v6VTT1eda/tiYkCb9xTzSv5K6hFsZgXnkG6b5tPZRBmwGHDFM
 Eq3VAGqmYG6jaBDlJqez6ys=
X-Google-Smtp-Source: ABdhPJxBfZoRMhIL8toqa9z7R22+wb5e8HwfzKaGzPTqXqM1dSAKHOsTvvLozQRQdydKZKkb/pj3Gw==
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr9250211plj.56.1611720934705; 
 Tue, 26 Jan 2021 20:15:34 -0800 (PST)
Received: from Leo-laptop-t470s ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id 77sm564860pfz.100.2021.01.26.20.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 20:15:33 -0800 (PST)
Date: Wed, 27 Jan 2021 12:15:21 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210127041521.GO1421720@Leo-laptop-t470s>
References: <20210126040949.3130937-1-liuhangbin@gmail.com>
 <8a34f089-204f-aeb1-afc7-26ccc06419eb@nvidia.com>
 <20210126132448.GN1421720@Leo-laptop-t470s>
 <90df4fe6-fcc5-f59a-c89c-6f596443af4d@nvidia.com>
 <0b5741b6-48c0-0c34-aed8-257f3e203ac5@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b5741b6-48c0-0c34-aed8-257f3e203ac5@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Jarod Wilson <jarod@redhat.com>, Ido Schimmel <idosch@idosch.org>,
 Roopa Prabhu <roopa@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] bridge: Propagate NETDEV_NOTIFY_PEERS
	notifier
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

On Tue, Jan 26, 2021 at 04:55:22PM +0200, Nikolay Aleksandrov wrote:
> >> Thanks for the reply. There are a few reasons I think the bridge should
> >> handle NETDEV_NOTIFY_PEERS:
> >>
> >> 1. Only a few devices will call NETDEV_NOTIFY_PEERS notifier: bond, team,
> >>    virtio, xen, 6lowpan. There should have no much notification message.
> > 
> > You can't send a broadcast to all ports because 1 bond's link status has changed.
> > That makes no sense, the GARP needs to be sent only on that bond. The bond devices
> > are heavily used with bridge setups, and in general the bridge is considered a switch
> > device, it shouldn't be broadcasting GARPs to all ports when one changes link state.
> > 
> 
> Scratch the last sentence, I guess you're talking about when the bond's mac causes
> the bridge to change mac address by br_stp_recalculate_bridge_id(). I was wondering

Yes, that's what I mean. Sorry I didn't make it clear in commit description.

> at first why would you need to send garp, but in fact, as Ido mentioned privately,
> it is already handled correctly, but you need to have set arp_notify sysctl.
> Then if the bridge's mac changes because of the bond flapping a NETDEV_NOTIFY_PEERS will be
> generated. Check:
> devinet.c inetdev_event() -> case NETDEV_CHANGEADDR

Yes, this is a generic work around. It will handle all mac changing instead of
failover.

For IGMP, although you said they are different. In my understanding, when
bridge mac changed, we need to re-join multicast group, while a gratuitous
ARP is also needed. I couldn't find a reason why IGMP message is OK but GARP
is not.

> 
> Alternatively you can always set the bridge mac address manually and then it won't be
> changed by such events.

Thanks for this tips. I'm not sure if administers like this way.

This remind me another issue. Should we resend IGMP when got port
NETDEV_RESEND_IGMP notify, Even the bridge mac address may not changed?
Shouldn't we only resend IGMP, GARP when bridge mac address changed, e.g.

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 1b169f8e7491..74571f24bb18 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -80,8 +80,11 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 		changed_addr = br_stp_recalculate_bridge_id(br);
 		spin_unlock_bh(&br->lock);
 
-		if (changed_addr)
+		if (changed_addr) {
 			call_netdevice_notifiers(NETDEV_CHANGEADDR, br->dev);
+			call_netdevice_notifiers(NETDEV_RESEND_IGMP, br->dev);
+			call_netdevice_notifiers(NETDEV_NOTIFY_PEERS, br->dev);
+		}
 
 		break;
 
@@ -124,11 +127,6 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 	case NETDEV_PRE_TYPE_CHANGE:
 		/* Forbid underlaying device to change its type. */
 		return NOTIFY_BAD;
-
-	case NETDEV_RESEND_IGMP:
-		/* Propagate to master device */
-		call_netdevice_notifiers(event, br->dev);
-		break;
 	}
 
 	if (event != NETDEV_UNREGISTER)


Thanks
Hangbin
