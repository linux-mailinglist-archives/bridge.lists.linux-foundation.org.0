Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1BA470C3
	for <lists.bridge@lfdr.de>; Sat, 15 Jun 2019 17:19:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 77513AA5;
	Sat, 15 Jun 2019 15:19:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97CEA7A4
	for <bridge@lists.linux-foundation.org>;
	Sat, 15 Jun 2019 15:19:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 257987F8
	for <bridge@lists.linux-foundation.org>;
	Sat, 15 Jun 2019 15:19:18 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v11so3270494pgl.5
	for <bridge@lists.linux-foundation.org>;
	Sat, 15 Jun 2019 08:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rj5thdQHso4WkcZJ5rv88vw6SlcMQ1DZZi7hsWXkILc=;
	b=Fb9x9pJdQ9j01cbaQOhMqM8TEIu6Zndl7l/OzHHIvsyf0EpmThB4V2/14dhBD2+vcW
	9weLbRWo351gGbYThrrtLV0M08rBaHgBvY5wddB/zLWigEkaYIxOmZMIjEH2Qw6tK49u
	pRV3YGCkvZ0DBVllD2XxCBXXNf/pNJggZ130IYlfMdN5Dm4Y/wLklgm2clVRm5xsUqli
	6iDLc1qb3FDh8XhSn1VRFmBbFODSFALC5MZm1pp9p6ANF4G0sACZrOBV/CSCnSpqZ0h1
	OaserkEYmKi2Xh/lo77gebWav3AbpeiuvrQE8+WxHrQxqgh+hIghWixq7feMUZ8Ha5wA
	vYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rj5thdQHso4WkcZJ5rv88vw6SlcMQ1DZZi7hsWXkILc=;
	b=dm5D331N69ARFfUDLVD3JGsVr55PReeuHHiSUSLF+ymfBzrLEUOK5nCq5XSY00L2yY
	NCStqmeKmEf7TCToVHfC42rOXfE77t5BW2ljWBrMI8caOl9q0yZ+gH2vgmqB2gPoBQe0
	dkAYiq7acNGn7aIdvhIbfS5CRptdatwg4sQDJ5vBAqzeJESr96qoTFAcESjs6BVHYUB8
	8zO3Nzqvm43JORiurJDUmCYDw9CpvGaoVxEXefbY25jCpmZSwUUkOKkf5sijJd8hi5x6
	woNCXsBPZTwkMPyN6b0WjhWJS27mf52mCdPbu2vjnI9Z4eLhVrtoHXy0V1CVB9RJshE9
	zDSA==
X-Gm-Message-State: APjAAAUhlbFe1ue95v1SeOQiduA0sr0ZnAi0cIdt6+HSQArIrwT1Vdpn
	3F03zDRaWllNB6Egje/fVfk=
X-Google-Smtp-Source: APXvYqx6AnpzSJpv0reunPAniN4BLynh56HoZIVtHHyKXA2uphCYg9fT3MyfcoBZSHJgsbHsuD5Nig==
X-Received: by 2002:a63:f817:: with SMTP id n23mr33694237pgh.35.1560611957574; 
	Sat, 15 Jun 2019 08:19:17 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:180::1:ed9e])
	by smtp.gmail.com with ESMTPSA id
	137sm6806654pfz.116.2019.06.15.08.19.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Jun 2019 08:19:16 -0700 (PDT)
Date: Sat, 15 Jun 2019 08:19:14 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
User-Agent: NeoMutt/20180223
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Jiri Pirko <jiri@mellanox.com>, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Simon Horman <simon.horman@netronome.com>, David Ahern <dsahern@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>, Alexei Starovoitov <ast@plumgrid.com>
Subject: Re: [Bridge] VLAN tags in mac_len
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

On Fri, Jun 14, 2019 at 12:18:41PM +0200, Johannes Berg wrote:
> 
> Possible solutions?
> 
> So far, Zahari tried three different ways of fixing this:
> 
>  1) Make the bridge code use skb->mac_len instead of ETH_HLEN. This
>     works for this particular case, but breaks some other cases;
>     evidently some places exist where skb->mac_len isn't even set to
>     ETH_HLEN when a packet gets to the bridge. I don't know right now
>     what that was, I think probably somebody who's CC'ed reported that.
> 
>  2) Let tc_act_vlan() just pull ETH_HLEN instead of skb->mac_len, but
>     this is rather asymmetric and strange, and while it works for this
>     case it may cause confusion elsewhere.
> 
>  2b) Toshiaki said it might be better to make that code *remember*
>      mac_len and then use it to push and pull (so not caring about the
>      change made by skb_vlan_push()), but that ultimately leads to
>      confusion and if you have TC push/pop combinations things just get
>      completely out of sync and die
> 
>  3) Make skb_vlan_push()/_pop() just not change mac_len at all. So far
>     this also addresses the issue, but it's likely that this will break
>     OVS, and I don't know how it'd affect BPF. Quite possibly like TC
>     does and is broken, but perhaps not.
> 
> 
> But now we're stuck. Depending on how you look at it, all of these seem
> sort of reasonable, or not.
> 
> Ultimately, the issue seems to be that we couldn't really decide whether
> VLAN tags (and probably MPLS tags, for that matter) are covered by
> mac_len or not. At least not consistently on ingress and egress.
> eth_type_trans() doesn't take them into account, so of course on simple
> ingress mac_len will only cover the ETH_HLEN.
> 
> If you have an accelerated tag and then push it into the SKB, it will
> *not* be taken into account in mac_len. OTOH, if you have a new tag and
> use skb_vlan_push() then it *will* be taken into account.
> 
> 
> I'm trending towards solution (3), because if we consider other
> combinations of VLAN push/pop in TC, I think we can end up in a very
> messy situation today. For example, POP/PUSH seems like it should be a
> no-op, but it isn't due to the mac_len, *unless* it can use the HW accel
> only (i.e. only a single tag).
> 
> I think then to propose such a patch though we'd have to figure out
> where the BPF case is, and to keep OVS working probably either add an
> argument ("bool adjust_mac_len") to the function signatures, or just do
> the adjustments in OVS code after calling them?
> 
> 
> Any other thoughts?

imo skb_vlan_push() should still change mac_len.
tc, ovs, bpf use it and expect vlan to be part of L2.
There is nothing between L2 and L3 :)
Hence we cannot say that vlan is not part of L2.
Hence push/pop vlan must change mac_len, since skb->mac_len
is kernel's definition of the length of L2 header.

Now as far as bridge... I think it's unfortunate that linux
adopted 'vlan' as a netdevice model and that's where I think
the problem is.
Typical bridge in the networking industry is a device that
does forwarding based on L2. Which includes vlans.
And imo that's the most appropriate way of configuring and thinking
about bridge functionality.
Whereas in the kernel there is a 'vlan' netdevice that 'eats'
vlan tag and pretends that the rest is the same.
So linux bridge kinda doesn't need to be vlan aware.
CONFIG_BRIDGE_VLAN_FILTERING was the right step, but I haven't
seen it being used and I'm not sure about state of things there.

So your option 1 above is imo the best. The bridge needs to deal
with skb->mac_len and full L2 header.

