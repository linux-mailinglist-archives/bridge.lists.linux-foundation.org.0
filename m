Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B778D48064
	for <lists.bridge@lfdr.de>; Mon, 17 Jun 2019 13:15:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1E121CCC;
	Mon, 17 Jun 2019 11:15:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E9ABB1F
	for <bridge@lists.linux-foundation.org>;
	Mon, 17 Jun 2019 11:15:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92BEA828
	for <bridge@lists.linux-foundation.org>;
	Mon, 17 Jun 2019 11:15:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 83so5629971pgg.8
	for <bridge@lists.linux-foundation.org>;
	Mon, 17 Jun 2019 04:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=sgNf2aHPyNL3Eqq7XcubYyZxc9jZb+xVBCQpSe9ajSc=;
	b=I0NLEWXkpIv4vM53B+pT5QfZW2hJ87jwNCzCaHlX2NEPt3oKYt6yvTQ83ObeL6L03z
	n5lFvIZ4JgxQ1VSfy3aPni/9zLIkT+obi9bilK8L6pdwSH95N7M6JRWjQylXsKs8HaMH
	rYb0O3jLNTHDtpEnR9AsrhPGmtY+XoYJBiiaLm+ByKQN58QzKGLBMr4aVAoxJ3clL6+a
	aqeRTFG3YePbwVOm0N5ALF4oYXo97uvuyEEc1OGidR3ViY1Zth3+kU/SdqFdPAR3U7MX
	1ydhfs0RZ/FlXQOAJnVOs3SuJ89DwjxLBisqg9MSIQj5GiTTkibfyXTC2pUbJMl3e9EQ
	HLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=sgNf2aHPyNL3Eqq7XcubYyZxc9jZb+xVBCQpSe9ajSc=;
	b=a9N122WJ02Pe3WVK5eXPb8tBOEReFFCJPaB8NRnrj9D1vIpUBxUCoLFHBwHax9g3vN
	vHb1kBGTVm0oKdKr3VsuotYeGMwd6AcNuQF+86DehT6hukPkRr7SCYyaVtR45LTth95o
	KoBZ0Q1NWcEvhFe5egBC6ia6ebDqmTVx/kNe4gUcijtRb4faBbz2CnxFitro5JcNcdkq
	XHQx2L8K3OeehYeqrdksYbggXnnUvJZzUR4z8OfOJgPGoqOUA9i0qCD7KwCEdJJVteQX
	XtO0dcdTdIK1QfZUgnx175vTCpy/Ga8OYeCZXpQ2LxDFCDSp1WuopE2geypxgLYl18NF
	8j2w==
X-Gm-Message-State: APjAAAV2q1n4iVb6MqMJrmBltlscAvwXoywUvEIpT+ScugnWVP2jQnN4
	wbuYOXx9CNVDnc6UH6Ki5gg=
X-Google-Smtp-Source: APXvYqxZb/UasTdtt0Gv9haW5vZKQn5GSyX5xWhcRvUp28UQZCqy2yS8R0TPOqGjjIZ6rwOnxiPALg==
X-Received: by 2002:a17:90a:6097:: with SMTP id
	z23mr14026859pji.75.1560770137122; 
	Mon, 17 Jun 2019 04:15:37 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
	by smtp.gmail.com with ESMTPSA id
	n7sm15251774pff.59.2019.06.17.04.15.33
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Jun 2019 04:15:36 -0700 (PDT)
To: Johannes Berg <johannes@sipsolutions.net>,
	Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
	<20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
	<e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <828a23fe-8466-ae65-7829-620f32aacead@gmail.com>
Date: Mon, 17 Jun 2019 20:15:30 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: David Ahern <dsahern@gmail.com>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Jiri Pirko <jiri@mellanox.com>,
	Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Simon Horman <simon.horman@netronome.com>
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

On 2019/06/16 4:19, Johannes Berg wrote:
> Hi Alexei,
> 
> Sorry for messing up your address btw, not sure where I dug that one
> up...
> 
>>>   1) Make the bridge code use skb->mac_len instead of ETH_HLEN. This
>>>      works for this particular case, but breaks some other cases;
>>>      evidently some places exist where skb->mac_len isn't even set to
>>>      ETH_HLEN when a packet gets to the bridge. I don't know right now
>>>      what that was, I think probably somebody who's CC'ed reported that.
>>>
>>>   2) Let tc_act_vlan() just pull ETH_HLEN instead of skb->mac_len, but
>>>      this is rather asymmetric and strange, and while it works for this
>>>      case it may cause confusion elsewhere.
>>>
>>>   2b) Toshiaki said it might be better to make that code *remember*
>>>       mac_len and then use it to push and pull (so not caring about the
>>>       change made by skb_vlan_push()), but that ultimately leads to
>>>       confusion and if you have TC push/pop combinations things just get
>>>       completely out of sync and die
>>>
>>>   3) Make skb_vlan_push()/_pop() just not change mac_len at all. So far
>>>      this also addresses the issue, but it's likely that this will break
>>>      OVS, and I don't know how it'd affect BPF. Quite possibly like TC
>>>      does and is broken, but perhaps not.
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
>            +------------------+----------------+---------------+
>   headroom | eth | vlan | ... | IP  | TCP      | payload       | tailroom
>            +------------------+----------------+---------------+
> ^ skb->head_ptr
>            ^ skb->l2_ptr
>                               ^ skb->l3_ptr == skb->l2_ptr + skb->l2_len
>                                      ...
>                                                ^ skb->payload_ptr
>                                                                ^ skb->tail
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
>            +------------------+----------------+---------------+
>   headroom | eth | vlan | ... | IP / TCP       | payload       | tailroom
>            +------------------+----------------+---------------+
>           
> ^ skb->data
>                                           skb->data + skb->len
> ^
> 
> On *ingress*, however, we hide some of the data (temporarily):
> 
> |--------- headroom ---------|
>            +------------------+----------------+---------------+
>            | eth | vlan | ... | IP / TCP       | payload       | tailroom
>            +------------------+----------------+---------------+
>            ^ skb->data - skb->mac_len
>                               ^ skb->data
>                                           skb->data + skb->len ^
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
>   * bridge/ethernet driver/... would use l2_ptr
>   * IP would use the l3_ptr
>   * TCP would use the l4_ptr (didn't put that into the picture)
>   * ...
> 
> Now we wouldn't have a problem with the VLAN tags, because we'd just
> appropriate set/keep all the pointers - bridge doesn't even care where
> l3_ptr is pointing, but for IP it would of course point to beyond the
> VLAN tags.
> 
> (Now, if you wanted to implement this, you probably wouldn't have l2_ptr
> but l2_offset etc. but that's an implementation detail.)
> 
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
> Maybe somewhere early in the egress path we should set skb->mac_len to
> dev->hard_header_len, and then use skb->mac_len consistently, and
> consider that part of the skb (and not arbitrarily consider ETH_HLEN to
> be part of the skb in bridge).
> 
> (This almost tempts me to actually try to implement the hypothetical SKB
> scheme I described above, just so it's easier to understand what part
> does what ... and to find where the issues like this occur)
> 
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

I'll try to explain the problem I see, which cannot be fixed by option 1...
The bug is in tcf_vlan_act(), and mainly in skb->data, not in mac_len.

Consider about vlan packets from NIC, but non-hw-accelerated, where
vlan devices are configured to receive them.

When __netif_receive_skb_core() is called, skb is like this.

+-----+------+--------
| eth | vlan | TCP/IP
+-----+------+--------
       ^
      data

skb->data is at the beginning of the vlan header.
This is reasonable because we did not process the vlan tag at this point.

Then after vlan_do_receive() (receive the skb on a vlan device), the skb is like this.

+-----+--------
| eth | TCP/IP
+-----+--------
       ^
      data

Or if reorder_hdr is off (which does not remove vlan tags when receiving on vlan devices),

+-----+------+--------
| eth | vlan | TCP/IP
+-----+------+--------
              ^
             data

Relying on this mechanism, we are currently able to handle multiple vlan tags.

For example if we have 2 tags,

- On __netif_receive_skb_core() invocation

+-----+------+------+--------
| eth | vlan | vlan | TCP/IP
+-----+------+------+--------
       ^
      data

- After first vlan_do_receive()

+-----+------+--------
| eth | vlan | TCP/IP
+-----+------+--------
       ^
      data

Or if reorder_hdr is off,

+-----+------+------+--------
| eth | vlan | vlan | TCP/IP
+-----+------+------+--------
              ^
             data

When we process one tag, the data goes forward by one tag.

Now looking at TC vlan case...

After it inserts two tags, the skb looks like:

(The first tag is in vlan_tci)
+-----+------+--------
| eth | vlan | TCP/IP
+-----+------+--------
              ^
             data

The data pointer went forward before we process it.
This is apparently wrong. I think we don't want to (or cannot?) handle cases like this
after tcf_vlan_act(). This is why I said we should remember mac_len there.

So, my opinion is:
On ingress, data pointer can be at the end of vlan header and mac_len probably should
include vlan tag length, but only after the vlan tag is processed.

Bridge may need to handle mac_len that is not equal to ETH_HLEN but to me it's a
different problem.

Toshiaki Makita
