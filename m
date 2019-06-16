Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D039F473D1
	for <lists.bridge@lfdr.de>; Sun, 16 Jun 2019 10:52:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8597BAF0;
	Sun, 16 Jun 2019 08:52:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33CD8A7F
	for <bridge@lists.linux-foundation.org>;
	Sun, 16 Jun 2019 08:52:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3083CE5
	for <bridge@lists.linux-foundation.org>;
	Sun, 16 Jun 2019 08:52:02 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f17so3555700wme.2
	for <bridge@lists.linux-foundation.org>;
	Sun, 16 Jun 2019 01:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=0zWDK+n678V8yx+tdJSSP8s+Km4f2Y8Egc/GwecBzwA=;
	b=EQZYONtQSysCJ8ZAuc3qx0jV1V0FI85hRDdlP1jXLiDXCc/JSKHTpnG1aRWTpjP26J
	avCEOLMDx7w2gWlIBSQtH8+ZPirvVKCKyMybc/TEH0KZLwLNP6pybseV3mqpB4lf6ISH
	h95WMyw/FV2weXW01MWYrjP2b3FDsjF3SvQYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=0zWDK+n678V8yx+tdJSSP8s+Km4f2Y8Egc/GwecBzwA=;
	b=aVXwnagG3rbQiv3SRQFQlH1nXYfRA34SCNqw27u561eOWZMMGOHAyKcbV/6w4NlqpD
	Tor/p15VKiCuiGZK9xrQXh0k6zEH9OdqFp6cer1uOYsjj7lKyTT5Edk9kD1Gj5R0x+Fd
	Shx+YQ6vTNqG0qyyqBZKxEAWvOaMY8IuBMVH+OhDa2ydvUqZPmw+rQn8ZxMaTKT8muhH
	TUxmCIsvr3K9YDSND7WMXcTOuDmBdukBmpDl28+1KNScBZ79kAlzNn6zmj4oF5hTvGIW
	0gbqm1nYUby9q4VoJLpUZLapyam68vcYyhugP4gCkIXADdjOayGqxFiy81jyTKEI7wN3
	eSFg==
X-Gm-Message-State: APjAAAW0ymbBZKJ1/KHjAgCvTC1eq0R9gIGgiHZnfevo2PVsA6e5uvNY
	XQ4iCDwedbtPOS2Eb/dgxgVXog==
X-Google-Smtp-Source: APXvYqx5XfAZH94pFWThavwU3N9aJad2sCvEl/4V11OIw0Tm3VXhNu3DaGdQ3+0EpAUhUGIn7RCYtA==
X-Received: by 2002:a1c:44d4:: with SMTP id
	r203mr14084051wma.158.1560675120709; 
	Sun, 16 Jun 2019 01:52:00 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id 5sm1251468wrc.76.2019.06.16.01.51.59
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Jun 2019 01:52:00 -0700 (PDT)
To: Johannes Berg <johannes@sipsolutions.net>,
	Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
	<20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
	<e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <9e3261a9-0fd2-aa36-d739-9f1adca1408b@cumulusnetworks.com>
Date: Sun, 16 Jun 2019 11:51:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Jiri Pirko <jiri@mellanox.com>, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Simon Horman <simon.horman@netronome.com>, David Ahern <dsahern@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>
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

On 15/06/2019 22:19, Johannes Berg wrote:
> Hi Alexei,
> 
> Sorry for messing up your address btw, not sure where I dug that one
> up...
> 
>>>  1) Make the bridge code use skb->mac_len instead of ETH_HLEN. This
>>>     works for this particular case, but breaks some other cases;
>>>     evidently some places exist where skb->mac_len isn't even set to
>>>     ETH_HLEN when a packet gets to the bridge. I don't know right now
>>>     what that was, I think probably somebody who's CC'ed reported that.
>>>
>>>  2) Let tc_act_vlan() just pull ETH_HLEN instead of skb->mac_len, but
>>>     this is rather asymmetric and strange, and while it works for this
>>>     case it may cause confusion elsewhere.
>>>
>>>  2b) Toshiaki said it might be better to make that code *remember*
>>>      mac_len and then use it to push and pull (so not caring about the
>>>      change made by skb_vlan_push()), but that ultimately leads to
>>>      confusion and if you have TC push/pop combinations things just get
>>>      completely out of sync and die
>>>
>>>  3) Make skb_vlan_push()/_pop() just not change mac_len at all. So far
>>>     this also addresses the issue, but it's likely that this will break
>>>     OVS, and I don't know how it'd affect BPF. Quite possibly like TC
>>>     does and is broken, but perhaps not.
>>>
>>>
>>> But now we're stuck. Depending on how you look at it, all of these seem
>>> sort of reasonable, or not.
>>>
>>> Ultimately, the issue seems to be that we couldn't really decide whether
>>> VLAN tags (and probably MPLS tags, for that matter) are covered by
>>> mac_len or not. At least not consistently on ingress and egress.
>>> eth_type_trans() doesn't take them into account, so of course on simple
>>> ingress mac_len will only cover the ETH_HLEN.
>>>
>>> If you have an accelerated tag and then push it into the SKB, it will
>>> *not* be taken into account in mac_len. OTOH, if you have a new tag and
>>> use skb_vlan_push() then it *will* be taken into account.
>>>
>>>
>>> I'm trending towards solution (3), because if we consider other
>>> combinations of VLAN push/pop in TC, I think we can end up in a very
>>> messy situation today. For example, POP/PUSH seems like it should be a
>>> no-op, but it isn't due to the mac_len, *unless* it can use the HW accel
>>> only (i.e. only a single tag).
>>>
>>> I think then to propose such a patch though we'd have to figure out
>>> where the BPF case is, and to keep OVS working probably either add an
>>> argument ("bool adjust_mac_len") to the function signatures, or just do
>>> the adjustments in OVS code after calling them?
>>>
>>>
>>> Any other thoughts?
>>
>> imo skb_vlan_push() should still change mac_len.
>> tc, ovs, bpf use it and expect vlan to be part of L2.
> 
> I'm not sure tc really cares, but it *is* a reasonable argument to make.
> 
> Like I said, whichever way I look at the problem, a different solution
> looks more reasonable ;-)
> 
>> There is nothing between L2 and L3 :)
>> Hence we cannot say that vlan is not part of L2.
>> Hence push/pop vlan must change mac_len, since skb->mac_len
>> is kernel's definition of the length of L2 header.
> 
> I think we're getting to something here now. I actually thought about
> this some more last night, and basically asked myself how I would design
> it without all the legacy baggage.
> 
> I'm certainly not suggesting we should change anything here, but to me
> it was a bit of a clarification to do this and then see where we differ
> in our handling today.
> 
> Thinking along those lines, I sort of ended up with the following scheme
> (just for the skb head, not the frags/fraglist):
> 
>           +------------------+----------------+---------------+
>  headroom | eth | vlan | ... | IP  | TCP      | payload       | tailroom
>           +------------------+----------------+---------------+
> ^ skb->head_ptr
>           ^ skb->l2_ptr
>                              ^ skb->l3_ptr == skb->l2_ptr + skb->l2_len
>                                     ...
>                                               ^ skb->payload_ptr
>                                                               ^ skb->tail
> 
> Now, I deliberately didn't put any "skb->data" here, because what we do
> today is sort of confusing.
> 
> By getting rid of the "multi-use" skb->data in this scheme I think it
> becomes clearer to think about.
> 
> 
> 
> On *egress*, all we really care about is this:
> 
>           +------------------+----------------+---------------+
>  headroom | eth | vlan | ... | IP / TCP       | payload       | tailroom
>           +------------------+----------------+---------------+
>          
> ^ skb->data
>                                          skb->data + skb->len 
> ^
> 
> On *ingress*, however, we hide some of the data (temporarily):
> 
> |--------- headroom ---------|
>           +------------------+----------------+---------------+
>           | eth | vlan | ... | IP / TCP       | payload       | tailroom
>           +------------------+----------------+---------------+
>           ^ skb->data - skb->mac_len
>                              ^ skb->data
>                                          skb->data + skb->len ^
> 
> which is somewhat confusing to me, and sort of causes all these
> problems.
> 
> (It also makes it harder to reason about what data is actually valid in
> the skb, although if mac_len is non-zero then it must be, but it means
> you actually have less headroom and all).
> 
> If instead we just made it like the hypothetical scheme I outlined
> above, then on traversing a layer we'd set the next layer pointer
> appropriately, and then each layer would just use the right pointer:
> 
>  * bridge/ethernet driver/... would use l2_ptr
>  * IP would use the l3_ptr
>  * TCP would use the l4_ptr (didn't put that into the picture)
>  * ...
> 
> Now we wouldn't have a problem with the VLAN tags, because we'd just
> appropriate set/keep all the pointers - bridge doesn't even care where
> l3_ptr is pointing, but for IP it would of course point to beyond the
> VLAN tags.
> 
> (Now, if you wanted to implement this, you probably wouldn't have l2_ptr
> but l2_offset etc. but that's an implementation detail.)
> 

I do like the scheme outlined above, it makes it easier to reason about
all of this, but obviously it'd require quite some changes.

> Now, why am I writing all this? Because I think it points out that
> you're absolutely right - we should treat mac_len as part of the frame
> if we're in anything that cares about L2 like bridge.
> 
>> Now as far as bridge... I think it's unfortunate that linux
>> adopted 'vlan' as a netdevice model and that's where I think
>> the problem is.
> 
> I'm not sure. I don't exactly know where the problem is if we fix bridge
> according to the patch (1) above, which, btw, was discussed before:
> https://lore.kernel.org/netdev/20190113135939.8970-1-zahari.doychev@linux.com/
> 
> Back then, Nikolay (whom I forgot to CC, fixed now) said:
> 
>> It breaks connectivity between bridge and
>> members when vlans are used. The host generated packets going out of the bridge
>> have mac_len = 0.
> 
> Which probably indicates that we're not even consistent with the egress
> scheme I pointed out above, probably because we *also* have
> hard_header_len?
> 

IIRC, mac_len is only set on Rx, while on Tx it usually isn't. More below.

> Maybe somewhere early in the egress path we should set skb->mac_len to
> dev->hard_header_len, and then use skb->mac_len consistently, and
> consider that part of the skb (and not arbitrarily consider ETH_HLEN to
> be part of the skb in bridge).
> 
> (This almost tempts me to actually try to implement the hypothetical SKB
> scheme I described above, just so it's easier to understand what part
> does what ... and to find where the issues like this occur)
> 

Interesting idea.

>> Typical bridge in the networking industry is a device that
>> does forwarding based on L2. Which includes vlans.
>> And imo that's the most appropriate way of configuring and thinking
>> about bridge functionality.
>> Whereas in the kernel there is a 'vlan' netdevice that 'eats'
>> vlan tag and pretends that the rest is the same.
>> So linux bridge kinda doesn't need to be vlan aware.
>> CONFIG_BRIDGE_VLAN_FILTERING was the right step, but I haven't
>> seen it being used and I'm not sure about state of things there.
> 
> I think that ends up being a question of semantics. You can consider an
> "industry bridge" that you describe to be a combination of VLAN and
> bridge netdevs, and so it's just a question of what exactly you consider
> a "bridge" - does it have to be a single netdev or not.
> 
>> So your option 1 above is imo the best. The bridge needs to deal
>> with skb->mac_len and full L2 header.
> 
> Yeah, I guess. We're back to square 1 ;-)
> 
> I'm not even sure I understand the bug that Nikolay described, because
> br_dev_xmit() does:
> 
>         skb_reset_mac_header(skb);
>         eth = eth_hdr(skb);
>         skb_pull(skb, ETH_HLEN);
> 
> so after this we *do* end up with an SKB that has mac_len == ETH_HLEN,
> if it was transmitted out the bridge netdev itself, and thus how would
> the bug happen?
> 

I said *mac_len*. :) The above sets mac_header, at that point you'll have
the following values: mac_len = 0, mac_header_len = 14 (skb_mac_header_len
uses network_header - mac_header which is set there), but that is easy
to overcome and if you do go down the path of consistently using and updating
mac_len it should work.

Cheers,
 Nik

> Thanks,
> johannes
> 

