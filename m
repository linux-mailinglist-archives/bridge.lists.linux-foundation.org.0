Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6718306B99
	for <lists.bridge@lfdr.de>; Thu, 28 Jan 2021 04:27:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A792686216;
	Thu, 28 Jan 2021 03:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s_gEtriGB-jv; Thu, 28 Jan 2021 03:27:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC58862C7;
	Thu, 28 Jan 2021 03:27:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20FC0C013A;
	Thu, 28 Jan 2021 03:27:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E0B2EC013A
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 03:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEEFD872EC
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 03:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QjLNTLucb96j for <bridge@lists.linux-foundation.org>;
 Thu, 28 Jan 2021 03:27:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21EEB87287
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 03:27:40 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id e9so3451209pjj.0
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 19:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PiWPUkYWirALNH3srwHMZyB8M+2z39u4PPSrRrniMj0=;
 b=X9Cz6XO/3EAt6MSawZAW8HJBYaEM3CpAF7LwXY/bUY7Xq5iE5bCtpKvVE81jnuRH6M
 YmF5wPFW0p3/cAq0kieYeXBKrHtHbWKU0VTuR8d1Ao39E4XAWb6defdNh7J81/3kuhdG
 lK8Lor1+q+VO4qcGqmPMVTbEOSj8lXw+t1ueLMTbkt3XWgmCVKSpjxLZS/x4fgccUokQ
 9qLVfvH+SlkxIU7EeJX0u0UvUVVZPMgVK6/pG0DhwOu0VryYdKhJE+dKl61nknpqywQm
 lTh8cBJm5bnEvfwAVQm92rwQjjxs3ObZD6n8sQpzQ+/VhovFNLwA0hJLkZ2itcWv7Hm1
 UpOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PiWPUkYWirALNH3srwHMZyB8M+2z39u4PPSrRrniMj0=;
 b=AMGjIhgeYiK/3ns2wiOqkFeVHAnSvBzNsSYuSvwzrFvMS6HuMEqj2YYY3XKJklOYXw
 cbgk9po4lhnCZgziMZDbncZY9wc5GbObRCI6i+wPM2Vq9RKtVMzvQfRKEhcLURHBoC5N
 9bZPW+L7pIRkjw2kK8Fs8TTfyttXkA6f1BdGLzbSOcoccLoj8+laawms/dDoFOk1KsGl
 U4EaA+y+EjOiGEmIl69hr31fOUWkox231BCqi7LUaj+TCusa8ZDD6NKBkg2ebT+py60M
 Spdmlu5A5tU/QupPZgcf4lcR+ZiyVsIau5qU7bthK2NZLWDqpBNr8naboCj130rPnEyF
 5jUw==
X-Gm-Message-State: AOAM533epv5q+n4DqitvqRE0ql9GRkFZgv/LOpsrTCSXYf2tHk9EorkV
 hGbjpQQ+kMAejBL+zqvtev8=
X-Google-Smtp-Source: ABdhPJw/2W00ba/U40TWiTwq5ieSy7TnZb5SweiEtrwYu2If1gLuoX+oapeK0QxA+1JjGtn3QPUicw==
X-Received: by 2002:a17:902:12c:b029:e1:aac:e6f4 with SMTP id
 41-20020a170902012cb02900e10aace6f4mr4312055plb.26.1611804459784; 
 Wed, 27 Jan 2021 19:27:39 -0800 (PST)
Received: from Leo-laptop-t470s ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s21sm3329751pjz.13.2021.01.27.19.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 19:27:38 -0800 (PST)
Date: Thu, 28 Jan 2021 11:27:26 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210128032726.GP1421720@Leo-laptop-t470s>
References: <20210126040949.3130937-1-liuhangbin@gmail.com>
 <8a34f089-204f-aeb1-afc7-26ccc06419eb@nvidia.com>
 <20210126132448.GN1421720@Leo-laptop-t470s>
 <90df4fe6-fcc5-f59a-c89c-6f596443af4d@nvidia.com>
 <0b5741b6-48c0-0c34-aed8-257f3e203ac5@nvidia.com>
 <20210127041521.GO1421720@Leo-laptop-t470s>
 <e22d0eea-4236-5916-cc42-532a3dfcc9dd@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e22d0eea-4236-5916-cc42-532a3dfcc9dd@nvidia.com>
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

On Wed, Jan 27, 2021 at 11:43:30AM +0200, Nikolay Aleksandrov wrote:
> > For IGMP, although you said they are different. In my understanding, when
> > bridge mac changed, we need to re-join multicast group, while a gratuitous
> > ARP is also needed. I couldn't find a reason why IGMP message is OK but GARP
> > is not.
> > 
> 
> I think that's needed more because of port changing rather than mac changing.
> Switches need to be updated if the port has changed, all of that is already handled
> correctly by the bond. And I also meant that mcast is handled very differently in
> the bridge, usually you'd have snooping enabled.
> 
> The patch below isn't correct and will actually break some cases when bonding
> flaps ports and propagates NETDEV_RESEND_IGMP with a bridge on top.

Hi Nikolay,

I'm little curious. bond/team device will resend IGMP as their MAC address changed.

- bond_resend_igmp_join_requests_delayed()
  - call_netdevice_notifiers(NETDEV_RESEND_IGMP, bond->dev);
- team_mcast_rejoin_work()
  - call_netdevice_notifiers(NETDEV_RESEND_IGMP, team->dev);

What's the purpose that bridge resend IGMP if it's mac address not changed?

I mean, when there is a bridge on top of bond/team, when bond/team flap ports,
bond/team will re-send IGMP and bridge just need to forward it. bridge doesn't
need to re-send the IGMP itself if it's MAC address not changed.

Thanks
Hangbin
